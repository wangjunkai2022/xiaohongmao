package com.google.android.exoplayer2.upstream.cache;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.android.exoplayer2.database.DatabaseIOException;
import com.google.android.exoplayer2.util.k0;
import com.google.android.exoplayer2.util.z0;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.k5;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import org.bouncycastle.jce.provider.BouncyCastleProvider;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CachedContentIndex.java */
/* loaded from: classes2.dex */
public class m {

    /* renamed from: g  reason: collision with root package name */
    static final String f27130g = "cached_content_index.exi";

    /* renamed from: h  reason: collision with root package name */
    private static final int f27131h = 10485760;

    /* renamed from: a  reason: collision with root package name */
    private final HashMap<String, l> f27132a;

    /* renamed from: b  reason: collision with root package name */
    private final SparseArray<String> f27133b;

    /* renamed from: c  reason: collision with root package name */
    private final SparseBooleanArray f27134c;

    /* renamed from: d  reason: collision with root package name */
    private final SparseBooleanArray f27135d;

    /* renamed from: e  reason: collision with root package name */
    private c f27136e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private c f27137f;

    /* compiled from: CachedContentIndex.java */
    /* loaded from: classes2.dex */
    private static final class a implements c {

        /* renamed from: e  reason: collision with root package name */
        private static final String f27138e = "ExoPlayerCacheIndex";

        /* renamed from: f  reason: collision with root package name */
        private static final int f27139f = 1;

        /* renamed from: g  reason: collision with root package name */
        private static final String f27140g = "id";

        /* renamed from: i  reason: collision with root package name */
        private static final String f27142i = "metadata";

        /* renamed from: j  reason: collision with root package name */
        private static final int f27143j = 0;

        /* renamed from: k  reason: collision with root package name */
        private static final int f27144k = 1;

        /* renamed from: l  reason: collision with root package name */
        private static final int f27145l = 2;

        /* renamed from: m  reason: collision with root package name */
        private static final String f27146m = "id = ?";

        /* renamed from: o  reason: collision with root package name */
        private static final String f27148o = "(id INTEGER PRIMARY KEY NOT NULL,key TEXT NOT NULL,metadata BLOB NOT NULL)";

        /* renamed from: a  reason: collision with root package name */
        private final com.google.android.exoplayer2.database.a f27149a;

        /* renamed from: b  reason: collision with root package name */
        private final SparseArray<l> f27150b = new SparseArray<>();

        /* renamed from: c  reason: collision with root package name */
        private String f27151c;

        /* renamed from: d  reason: collision with root package name */
        private String f27152d;

        /* renamed from: h  reason: collision with root package name */
        private static final String f27141h = "key";

        /* renamed from: n  reason: collision with root package name */
        private static final String[] f27147n = {"id", f27141h, "metadata"};

        public a(com.google.android.exoplayer2.database.a aVar) {
            this.f27149a = aVar;
        }

        private void i(SQLiteDatabase sQLiteDatabase, l lVar) throws IOException {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            m.v(lVar.d(), new DataOutputStream(byteArrayOutputStream));
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", Integer.valueOf(lVar.f27123a));
            contentValues.put(f27141h, lVar.f27124b);
            contentValues.put("metadata", byteArray);
            sQLiteDatabase.replaceOrThrow((String) com.google.android.exoplayer2.util.a.g(this.f27152d), null, contentValues);
        }

        public static void j(com.google.android.exoplayer2.database.a aVar, long j4) throws DatabaseIOException {
            k(aVar, Long.toHexString(j4));
        }

        private static void k(com.google.android.exoplayer2.database.a aVar, String str) throws DatabaseIOException {
            try {
                String o9 = o(str);
                SQLiteDatabase writableDatabase = aVar.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                com.google.android.exoplayer2.database.d.c(writableDatabase, 1, str);
                m(writableDatabase, o9);
                writableDatabase.setTransactionSuccessful();
                writableDatabase.endTransaction();
            } catch (SQLException e4) {
                throw new DatabaseIOException(e4);
            }
        }

        private void l(SQLiteDatabase sQLiteDatabase, int i4) {
            sQLiteDatabase.delete((String) com.google.android.exoplayer2.util.a.g(this.f27152d), f27146m, new String[]{Integer.toString(i4)});
        }

        private static void m(SQLiteDatabase sQLiteDatabase, String str) {
            String valueOf = String.valueOf(str);
            sQLiteDatabase.execSQL(valueOf.length() != 0 ? "DROP TABLE IF EXISTS ".concat(valueOf) : new String("DROP TABLE IF EXISTS "));
        }

        private Cursor n() {
            return this.f27149a.getReadableDatabase().query((String) com.google.android.exoplayer2.util.a.g(this.f27152d), f27147n, null, null, null, null, null);
        }

        private static String o(String str) {
            String valueOf = String.valueOf(str);
            return valueOf.length() != 0 ? f27138e.concat(valueOf) : new String(f27138e);
        }

        private void p(SQLiteDatabase sQLiteDatabase) throws DatabaseIOException {
            com.google.android.exoplayer2.database.d.d(sQLiteDatabase, 1, (String) com.google.android.exoplayer2.util.a.g(this.f27151c), 1);
            m(sQLiteDatabase, (String) com.google.android.exoplayer2.util.a.g(this.f27152d));
            String str = this.f27152d;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 88);
            sb.append("CREATE TABLE ");
            sb.append(str);
            sb.append(" ");
            sb.append(f27148o);
            sQLiteDatabase.execSQL(sb.toString());
        }

        @Override // com.google.android.exoplayer2.upstream.cache.m.c
        public void a(l lVar, boolean z9) {
            if (z9) {
                this.f27150b.delete(lVar.f27123a);
            } else {
                this.f27150b.put(lVar.f27123a, null);
            }
        }

        @Override // com.google.android.exoplayer2.upstream.cache.m.c
        public boolean b() throws DatabaseIOException {
            return com.google.android.exoplayer2.database.d.b(this.f27149a.getReadableDatabase(), 1, (String) com.google.android.exoplayer2.util.a.g(this.f27151c)) != -1;
        }

        @Override // com.google.android.exoplayer2.upstream.cache.m.c
        public void c(HashMap<String, l> hashMap) throws IOException {
            if (this.f27150b.size() == 0) {
                return;
            }
            try {
                SQLiteDatabase writableDatabase = this.f27149a.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                for (int i4 = 0; i4 < this.f27150b.size(); i4++) {
                    l valueAt = this.f27150b.valueAt(i4);
                    if (valueAt == null) {
                        l(writableDatabase, this.f27150b.keyAt(i4));
                    } else {
                        i(writableDatabase, valueAt);
                    }
                }
                writableDatabase.setTransactionSuccessful();
                this.f27150b.clear();
                writableDatabase.endTransaction();
            } catch (SQLException e4) {
                throw new DatabaseIOException(e4);
            }
        }

        @Override // com.google.android.exoplayer2.upstream.cache.m.c
        public void d(long j4) {
            String hexString = Long.toHexString(j4);
            this.f27151c = hexString;
            this.f27152d = o(hexString);
        }

        @Override // com.google.android.exoplayer2.upstream.cache.m.c
        public void e(HashMap<String, l> hashMap) throws IOException {
            try {
                SQLiteDatabase writableDatabase = this.f27149a.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                p(writableDatabase);
                for (l lVar : hashMap.values()) {
                    i(writableDatabase, lVar);
                }
                writableDatabase.setTransactionSuccessful();
                this.f27150b.clear();
                writableDatabase.endTransaction();
            } catch (SQLException e4) {
                throw new DatabaseIOException(e4);
            }
        }

        @Override // com.google.android.exoplayer2.upstream.cache.m.c
        public void f(l lVar) {
            this.f27150b.put(lVar.f27123a, lVar);
        }

        @Override // com.google.android.exoplayer2.upstream.cache.m.c
        public void g(HashMap<String, l> hashMap, SparseArray<String> sparseArray) throws IOException {
            com.google.android.exoplayer2.util.a.i(this.f27150b.size() == 0);
            try {
                if (com.google.android.exoplayer2.database.d.b(this.f27149a.getReadableDatabase(), 1, (String) com.google.android.exoplayer2.util.a.g(this.f27151c)) != 1) {
                    SQLiteDatabase writableDatabase = this.f27149a.getWritableDatabase();
                    writableDatabase.beginTransactionNonExclusive();
                    p(writableDatabase);
                    writableDatabase.setTransactionSuccessful();
                    writableDatabase.endTransaction();
                }
                Cursor n9 = n();
                while (n9.moveToNext()) {
                    l lVar = new l(n9.getInt(0), n9.getString(1), m.s(new DataInputStream(new ByteArrayInputStream(n9.getBlob(2)))));
                    hashMap.put(lVar.f27124b, lVar);
                    sparseArray.put(lVar.f27123a, lVar.f27124b);
                }
                n9.close();
            } catch (SQLiteException e4) {
                hashMap.clear();
                sparseArray.clear();
                throw new DatabaseIOException(e4);
            }
        }

        @Override // com.google.android.exoplayer2.upstream.cache.m.c
        public void h() throws DatabaseIOException {
            k(this.f27149a, (String) com.google.android.exoplayer2.util.a.g(this.f27151c));
        }
    }

    /* compiled from: CachedContentIndex.java */
    /* loaded from: classes2.dex */
    private static class b implements c {

        /* renamed from: h  reason: collision with root package name */
        private static final int f27153h = 2;

        /* renamed from: i  reason: collision with root package name */
        private static final int f27154i = 2;

        /* renamed from: j  reason: collision with root package name */
        private static final int f27155j = 1;

        /* renamed from: a  reason: collision with root package name */
        private final boolean f27156a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final Cipher f27157b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final SecretKeySpec f27158c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private final SecureRandom f27159d;

        /* renamed from: e  reason: collision with root package name */
        private final com.google.android.exoplayer2.util.b f27160e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f27161f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private k0 f27162g;

        public b(File file, @Nullable byte[] bArr, boolean z9) {
            Cipher cipher;
            SecretKeySpec secretKeySpec;
            com.google.android.exoplayer2.util.a.i((bArr == null && z9) ? false : true);
            if (bArr != null) {
                com.google.android.exoplayer2.util.a.a(bArr.length == 16);
                try {
                    cipher = m.j();
                    secretKeySpec = new SecretKeySpec(bArr, "AES");
                } catch (NoSuchAlgorithmException | NoSuchPaddingException e4) {
                    throw new IllegalStateException(e4);
                }
            } else {
                com.google.android.exoplayer2.util.a.a(!z9);
                cipher = null;
                secretKeySpec = null;
            }
            this.f27156a = z9;
            this.f27157b = cipher;
            this.f27158c = secretKeySpec;
            this.f27159d = z9 ? new SecureRandom() : null;
            this.f27160e = new com.google.android.exoplayer2.util.b(file);
        }

        private int i(l lVar, int i4) {
            int hashCode = (lVar.f27123a * 31) + lVar.f27124b.hashCode();
            if (i4 < 2) {
                long a10 = o.a(lVar.d());
                return (hashCode * 31) + ((int) (a10 ^ (a10 >>> 32)));
            }
            return (hashCode * 31) + lVar.d().hashCode();
        }

        private l j(int i4, DataInputStream dataInputStream) throws IOException {
            r s9;
            int readInt = dataInputStream.readInt();
            String readUTF = dataInputStream.readUTF();
            if (i4 < 2) {
                long readLong = dataInputStream.readLong();
                q qVar = new q();
                q.h(qVar, readLong);
                s9 = r.f27179f.g(qVar);
            } else {
                s9 = m.s(dataInputStream);
            }
            return new l(readInt, readUTF, s9);
        }

        private boolean k(HashMap<String, l> hashMap, SparseArray<String> sparseArray) {
            if (!this.f27160e.c()) {
                return true;
            }
            DataInputStream dataInputStream = null;
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(this.f27160e.d());
                DataInputStream dataInputStream2 = new DataInputStream(bufferedInputStream);
                try {
                    int readInt = dataInputStream2.readInt();
                    if (readInt >= 0 && readInt <= 2) {
                        if ((dataInputStream2.readInt() & 1) != 0) {
                            if (this.f27157b == null) {
                                z0.q(dataInputStream2);
                                return false;
                            }
                            byte[] bArr = new byte[16];
                            dataInputStream2.readFully(bArr);
                            try {
                                this.f27157b.init(2, (Key) z0.k(this.f27158c), new IvParameterSpec(bArr));
                                dataInputStream2 = new DataInputStream(new CipherInputStream(bufferedInputStream, this.f27157b));
                            } catch (InvalidAlgorithmParameterException e4) {
                                e = e4;
                                throw new IllegalStateException(e);
                            } catch (InvalidKeyException e10) {
                                e = e10;
                                throw new IllegalStateException(e);
                            }
                        } else if (this.f27156a) {
                            this.f27161f = true;
                        }
                        int readInt2 = dataInputStream2.readInt();
                        int i4 = 0;
                        for (int i10 = 0; i10 < readInt2; i10++) {
                            l j4 = j(readInt, dataInputStream2);
                            hashMap.put(j4.f27124b, j4);
                            sparseArray.put(j4.f27123a, j4.f27124b);
                            i4 += i(j4, readInt);
                        }
                        int readInt3 = dataInputStream2.readInt();
                        boolean z9 = dataInputStream2.read() == -1;
                        if (readInt3 == i4 && z9) {
                            z0.q(dataInputStream2);
                            return true;
                        }
                        z0.q(dataInputStream2);
                        return false;
                    }
                    z0.q(dataInputStream2);
                    return false;
                } catch (IOException unused) {
                    dataInputStream = dataInputStream2;
                    if (dataInputStream != null) {
                        z0.q(dataInputStream);
                    }
                    return false;
                } catch (Throwable th) {
                    th = th;
                    dataInputStream = dataInputStream2;
                    if (dataInputStream != null) {
                        z0.q(dataInputStream);
                    }
                    throw th;
                }
            } catch (IOException unused2) {
            } catch (Throwable th2) {
                th = th2;
            }
        }

        private void l(l lVar, DataOutputStream dataOutputStream) throws IOException {
            dataOutputStream.writeInt(lVar.f27123a);
            dataOutputStream.writeUTF(lVar.f27124b);
            m.v(lVar.d(), dataOutputStream);
        }

        private void m(HashMap<String, l> hashMap) throws IOException {
            k0 k0Var;
            DataOutputStream dataOutputStream;
            DataOutputStream dataOutputStream2 = null;
            try {
                OutputStream f10 = this.f27160e.f();
                k0 k0Var2 = this.f27162g;
                if (k0Var2 == null) {
                    this.f27162g = new k0(f10);
                } else {
                    k0Var2.a(f10);
                }
                k0Var = this.f27162g;
                dataOutputStream = new DataOutputStream(k0Var);
            } catch (Throwable th) {
                th = th;
            }
            try {
                dataOutputStream.writeInt(2);
                int i4 = 0;
                dataOutputStream.writeInt(this.f27156a ? 1 : 0);
                if (this.f27156a) {
                    byte[] bArr = new byte[16];
                    ((SecureRandom) z0.k(this.f27159d)).nextBytes(bArr);
                    dataOutputStream.write(bArr);
                    try {
                        ((Cipher) z0.k(this.f27157b)).init(1, (Key) z0.k(this.f27158c), new IvParameterSpec(bArr));
                        dataOutputStream.flush();
                        dataOutputStream = new DataOutputStream(new CipherOutputStream(k0Var, this.f27157b));
                    } catch (InvalidAlgorithmParameterException e4) {
                        e = e4;
                        throw new IllegalStateException(e);
                    } catch (InvalidKeyException e10) {
                        e = e10;
                        throw new IllegalStateException(e);
                    }
                }
                dataOutputStream.writeInt(hashMap.size());
                for (l lVar : hashMap.values()) {
                    l(lVar, dataOutputStream);
                    i4 += i(lVar, 2);
                }
                dataOutputStream.writeInt(i4);
                this.f27160e.b(dataOutputStream);
                z0.q(null);
            } catch (Throwable th2) {
                th = th2;
                dataOutputStream2 = dataOutputStream;
                z0.q(dataOutputStream2);
                throw th;
            }
        }

        @Override // com.google.android.exoplayer2.upstream.cache.m.c
        public void a(l lVar, boolean z9) {
            this.f27161f = true;
        }

        @Override // com.google.android.exoplayer2.upstream.cache.m.c
        public boolean b() {
            return this.f27160e.c();
        }

        @Override // com.google.android.exoplayer2.upstream.cache.m.c
        public void c(HashMap<String, l> hashMap) throws IOException {
            if (this.f27161f) {
                e(hashMap);
            }
        }

        @Override // com.google.android.exoplayer2.upstream.cache.m.c
        public void d(long j4) {
        }

        @Override // com.google.android.exoplayer2.upstream.cache.m.c
        public void e(HashMap<String, l> hashMap) throws IOException {
            m(hashMap);
            this.f27161f = false;
        }

        @Override // com.google.android.exoplayer2.upstream.cache.m.c
        public void f(l lVar) {
            this.f27161f = true;
        }

        @Override // com.google.android.exoplayer2.upstream.cache.m.c
        public void g(HashMap<String, l> hashMap, SparseArray<String> sparseArray) {
            com.google.android.exoplayer2.util.a.i(!this.f27161f);
            if (k(hashMap, sparseArray)) {
                return;
            }
            hashMap.clear();
            sparseArray.clear();
            this.f27160e.a();
        }

        @Override // com.google.android.exoplayer2.upstream.cache.m.c
        public void h() {
            this.f27160e.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CachedContentIndex.java */
    /* loaded from: classes2.dex */
    public interface c {
        void a(l lVar, boolean z9);

        boolean b() throws IOException;

        void c(HashMap<String, l> hashMap) throws IOException;

        void d(long j4);

        void e(HashMap<String, l> hashMap) throws IOException;

        void f(l lVar);

        void g(HashMap<String, l> hashMap, SparseArray<String> sparseArray) throws IOException;

        void h() throws IOException;
    }

    public m(com.google.android.exoplayer2.database.a aVar) {
        this(aVar, null, null, false, false);
    }

    private l d(String str) {
        int n9 = n(this.f27133b);
        l lVar = new l(n9, str);
        this.f27132a.put(str, lVar);
        this.f27133b.put(n9, str);
        this.f27135d.put(n9, true);
        this.f27136e.f(lVar);
        return lVar;
    }

    @WorkerThread
    public static void g(com.google.android.exoplayer2.database.a aVar, long j4) throws DatabaseIOException {
        a.j(aVar, j4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"GetInstance"})
    public static Cipher j() throws NoSuchPaddingException, NoSuchAlgorithmException {
        if (z0.f27743a == 18) {
            try {
                return Cipher.getInstance("AES/CBC/PKCS5PADDING", BouncyCastleProvider.PROVIDER_NAME);
            } catch (Throwable unused) {
            }
        }
        return Cipher.getInstance("AES/CBC/PKCS5PADDING");
    }

    @VisibleForTesting
    static int n(SparseArray<String> sparseArray) {
        int size = sparseArray.size();
        int i4 = 0;
        int keyAt = size == 0 ? 0 : sparseArray.keyAt(size - 1) + 1;
        if (keyAt < 0) {
            while (i4 < size && i4 == sparseArray.keyAt(i4)) {
                i4++;
            }
            return i4;
        }
        return keyAt;
    }

    public static boolean q(String str) {
        return str.startsWith(f27130g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static r s(DataInputStream dataInputStream) throws IOException {
        int readInt = dataInputStream.readInt();
        HashMap hashMap = new HashMap();
        for (int i4 = 0; i4 < readInt; i4++) {
            String readUTF = dataInputStream.readUTF();
            int readInt2 = dataInputStream.readInt();
            if (readInt2 >= 0) {
                int min = Math.min(readInt2, (int) f27131h);
                byte[] bArr = z0.f27748f;
                int i10 = 0;
                while (i10 != readInt2) {
                    int i11 = i10 + min;
                    bArr = Arrays.copyOf(bArr, i11);
                    dataInputStream.readFully(bArr, i10, min);
                    min = Math.min(readInt2 - i11, (int) f27131h);
                    i10 = i11;
                }
                hashMap.put(readUTF, bArr);
            } else {
                StringBuilder sb = new StringBuilder(31);
                sb.append("Invalid value size: ");
                sb.append(readInt2);
                throw new IOException(sb.toString());
            }
        }
        return new r(hashMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void v(r rVar, DataOutputStream dataOutputStream) throws IOException {
        Set<Map.Entry<String, byte[]>> h4 = rVar.h();
        dataOutputStream.writeInt(h4.size());
        for (Map.Entry<String, byte[]> entry : h4) {
            dataOutputStream.writeUTF(entry.getKey());
            byte[] value = entry.getValue();
            dataOutputStream.writeInt(value.length);
            dataOutputStream.write(value);
        }
    }

    public void e(String str, q qVar) {
        l o9 = o(str);
        if (o9.b(qVar)) {
            this.f27136e.f(o9);
        }
    }

    public int f(String str) {
        return o(str).f27123a;
    }

    @Nullable
    public l h(String str) {
        return this.f27132a.get(str);
    }

    public Collection<l> i() {
        return Collections.unmodifiableCollection(this.f27132a.values());
    }

    public p k(String str) {
        l h4 = h(str);
        return h4 != null ? h4.d() : r.f27179f;
    }

    @Nullable
    public String l(int i4) {
        return this.f27133b.get(i4);
    }

    public Set<String> m() {
        return this.f27132a.keySet();
    }

    public l o(String str) {
        l lVar = this.f27132a.get(str);
        return lVar == null ? d(str) : lVar;
    }

    @WorkerThread
    public void p(long j4) throws IOException {
        c cVar;
        this.f27136e.d(j4);
        c cVar2 = this.f27137f;
        if (cVar2 != null) {
            cVar2.d(j4);
        }
        if (!this.f27136e.b() && (cVar = this.f27137f) != null && cVar.b()) {
            this.f27137f.g(this.f27132a, this.f27133b);
            this.f27136e.e(this.f27132a);
        } else {
            this.f27136e.g(this.f27132a, this.f27133b);
        }
        c cVar3 = this.f27137f;
        if (cVar3 != null) {
            cVar3.h();
            this.f27137f = null;
        }
    }

    public void r(String str) {
        l lVar = this.f27132a.get(str);
        if (lVar != null && lVar.g() && lVar.i()) {
            this.f27132a.remove(str);
            int i4 = lVar.f27123a;
            boolean z9 = this.f27135d.get(i4);
            this.f27136e.a(lVar, z9);
            if (z9) {
                this.f27133b.remove(i4);
                this.f27135d.delete(i4);
                return;
            }
            this.f27133b.put(i4, null);
            this.f27134c.put(i4, true);
        }
    }

    public void t() {
        k5 it = ImmutableSet.copyOf((Collection) this.f27132a.keySet()).iterator();
        while (it.hasNext()) {
            r((String) it.next());
        }
    }

    @WorkerThread
    public void u() throws IOException {
        this.f27136e.c(this.f27132a);
        int size = this.f27134c.size();
        for (int i4 = 0; i4 < size; i4++) {
            this.f27133b.remove(this.f27134c.keyAt(i4));
        }
        this.f27134c.clear();
        this.f27135d.clear();
    }

    public m(@Nullable com.google.android.exoplayer2.database.a aVar, @Nullable File file, @Nullable byte[] bArr, boolean z9, boolean z10) {
        com.google.android.exoplayer2.util.a.i((aVar == null && file == null) ? false : true);
        this.f27132a = new HashMap<>();
        this.f27133b = new SparseArray<>();
        this.f27134c = new SparseBooleanArray();
        this.f27135d = new SparseBooleanArray();
        a aVar2 = aVar != null ? new a(aVar) : null;
        b bVar = file != null ? new b(new File(file, f27130g), bArr, z9) : null;
        if (aVar2 != null && (bVar == null || !z10)) {
            this.f27136e = aVar2;
            this.f27137f = bVar;
            return;
        }
        this.f27136e = (c) z0.k(bVar);
        this.f27137f = aVar2;
    }
}
