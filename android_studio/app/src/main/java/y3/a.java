package y3;

import com.googlecode.mp4parser.authoring.tracks.u;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.LineNumberReader;

/* compiled from: SrtParser.java */
/* loaded from: classes2.dex */
public class a {
    private static long a(String str) {
        return (Long.parseLong(str.split(":")[0].trim()) * 60 * 60 * 1000) + (Long.parseLong(str.split(":")[1].trim()) * 60 * 1000) + (Long.parseLong(str.split(":")[2].split(",")[0].trim()) * 1000) + Long.parseLong(str.split(":")[2].split(",")[1].trim());
    }

    public static u b(InputStream inputStream) throws IOException {
        LineNumberReader lineNumberReader = new LineNumberReader(new InputStreamReader(inputStream, "UTF-8"));
        u uVar = new u();
        while (lineNumberReader.readLine() != null) {
            String readLine = lineNumberReader.readLine();
            String str = "";
            while (true) {
                String readLine2 = lineNumberReader.readLine();
                if (readLine2 != null && !readLine2.trim().equals("")) {
                    str = String.valueOf(str) + readLine2 + "\n";
                }
            }
            uVar.a().add(new u.a(a(readLine.split("-->")[0]), a(readLine.split("-->")[1]), str));
        }
        return uVar;
    }
}
