package androidx.emoji2.text.flatbuffer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public interface ReadWriteBuf extends ReadBuf {
    @Override // androidx.emoji2.text.flatbuffer.ReadBuf
    int limit();

    void put(byte b10);

    void put(byte[] bArr, int i4, int i10);

    void putBoolean(boolean z9);

    void putDouble(double d4);

    void putFloat(float f10);

    void putInt(int i4);

    void putLong(long j4);

    void putShort(short s9);

    boolean requestCapacity(int i4);

    void set(int i4, byte b10);

    void set(int i4, byte[] bArr, int i10, int i11);

    void setBoolean(int i4, boolean z9);

    void setDouble(int i4, double d4);

    void setFloat(int i4, float f10);

    void setInt(int i4, int i10);

    void setLong(int i4, long j4);

    void setShort(int i4, short s9);

    int writePosition();
}
