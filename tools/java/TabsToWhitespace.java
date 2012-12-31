
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.FileVisitor;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;

public class TabsToWhitespace {
    static ArrayList<String> mPaths = new ArrayList<String>(0);

    public static void main(String[] args) {
        for (int i = 0, argsLength = args.length; i < argsLength; i++) {
            walker(args[i]);
        }
    }

    private static String readFile(String path) throws IOException {
        File file = new File(path);
        StringBuilder contents = new StringBuilder();
        BufferedReader reader = null;

        try {
            reader = new BufferedReader(new FileReader(file));
            String text;
            // repeat until all lines are read
            while ((text = reader.readLine()) != null) {
                // replace tabs with 4 whitespaces
                String text_wo_tabs = text.replace("\t", "    ");
                // send it off to have trailing whitespace trimmed
                if (text.length() != 0)
                    text_wo_tabs = trimEnd(text_wo_tabs);
                contents.append(text_wo_tabs);
                contents.append(System.getProperty("line.separator"));
            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            try {
                if (reader != null) {
                    reader.close();
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return contents.toString();
    }

    private static String trimEnd(String str) {
        int len = str.length();
        char[] val = str.toCharArray();
        while ((0 < len) && (val[len - 1] <= ' ')) {
            len--;
        }
        return (len < str.length()) ? str.substring(0, len) : str;
    }

    @SuppressWarnings("ResultOfMethodCallIgnored")
    private static void writeFile(String path, String file_text) throws IOException {
        File file = new File(path + "_");
        if (file.exists()) {
            file.delete();
            file.createNewFile();
        }
        BufferedWriter out = null;
        try {
            out = new BufferedWriter(new FileWriter(file));
            out.write(file_text);
        } finally {
            if (out != null)
                out.close();
        }
    }
    private static void walker(String ROOT) {
        FileVisitor<Path> fileProcessor = new ProcessFile();
        try {
            Files.walkFileTree(Paths.get(ROOT), fileProcessor);
            for (String path : mPaths) {
                if (!new File(path).exists() || path.endsWith("~"))
                    continue;
                writeFile(path, readFile(path));
                File tempFile = new File(path + "_");
                File originalFile = new File(path);
                if (!tempFile.renameTo(originalFile)) {
                    System.out.println("rename failed");
                }
                System.out.println("Parsed and styled file: " + originalFile.getAbsolutePath());
            }
        } catch (IOException ignored) {
        }
    }

    private static final class ProcessFile extends SimpleFileVisitor<Path> {
        @Override
        public FileVisitResult visitFile(Path aFile,
                    BasicFileAttributes aAttr) throws IOException {
            String parent = new File(aFile.getParent().toString()).getName();
            if (!parent.startsWith(".")) {
                if (aFile.toString().endsWith(".java")
                        || aFile.toString().endsWith(".xml"))
                mPaths.add(aFile.toString());
            }
            return FileVisitResult.CONTINUE;
        }

        @Override
        public FileVisitResult preVisitDirectory(Path aDir,
                    BasicFileAttributes aAttr) throws IOException {
            System.out.println("Parsing files in directory: " + aDir);
            return FileVisitResult.CONTINUE;
        }
    }
}
