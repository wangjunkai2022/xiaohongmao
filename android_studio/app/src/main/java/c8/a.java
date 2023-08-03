package c8;

import java.io.InputStream;
import master.flame.danmaku.danmaku.loader.IllegalDataException;
import master.flame.danmaku.danmaku.parser.b;

/* compiled from: ILoader.java */
/* loaded from: classes4.dex */
public interface a {
    void b(String str) throws IllegalDataException;

    void c(InputStream inputStream) throws IllegalDataException;

    b<?> getDataSource();
}
