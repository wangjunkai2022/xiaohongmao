package androidx.emoji2.text.flatbuffer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public interface ReadBuf {
    byte[] data();

    byte get(int i4);

    boolean getBoolean(int i4);

    double getDouble(int i4);

    float getFloat(int i4);

    int getInt(int i4);

    long getLong(int i4);

    short getShort(int i4);

    String getString(int i4, int i10);

    int limit();
}
