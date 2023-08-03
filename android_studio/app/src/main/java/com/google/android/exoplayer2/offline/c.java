package com.google.android.exoplayer2.offline;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.exoplayer2.database.DatabaseIOException;
import com.google.android.exoplayer2.offline.DownloadRequest;
import com.google.android.exoplayer2.util.z0;
import java.util.ArrayList;
import java.util.List;
import org.bouncycastle.i18n.MessageBundle;

/* compiled from: DefaultDownloadIndex.java */
/* loaded from: classes2.dex */
public final class c implements f0 {
    private static final int A = 4;
    private static final int B = 5;
    private static final int C = 6;
    private static final int D = 7;
    private static final int E = 8;
    private static final int F = 9;
    private static final int G = 10;
    private static final int H = 11;
    private static final int I = 12;
    private static final int J = 13;
    private static final int K = 14;
    private static final String L = "id = ?";
    private static final String M = "state = 2";
    private static final String P = "(id TEXT PRIMARY KEY NOT NULL,mime_type TEXT,uri TEXT NOT NULL,stream_keys TEXT NOT NULL,custom_cache_key TEXT,data BLOB NOT NULL,state INTEGER NOT NULL,start_time_ms INTEGER NOT NULL,update_time_ms INTEGER NOT NULL,content_length INTEGER NOT NULL,stop_reason INTEGER NOT NULL,failure_reason INTEGER NOT NULL,percent_downloaded REAL NOT NULL,bytes_downloaded INTEGER NOT NULL,key_set_id BLOB NOT NULL)";
    private static final String Q = "1";

    /* renamed from: f  reason: collision with root package name */
    private static final String f24280f = "ExoPlayerDownloads";
    @VisibleForTesting

    /* renamed from: g  reason: collision with root package name */
    static final int f24281g = 3;

    /* renamed from: h  reason: collision with root package name */
    private static final String f24282h = "id";

    /* renamed from: i  reason: collision with root package name */
    private static final String f24283i = "mime_type";

    /* renamed from: m  reason: collision with root package name */
    private static final String f24287m = "data";

    /* renamed from: n  reason: collision with root package name */
    private static final String f24288n = "state";

    /* renamed from: r  reason: collision with root package name */
    private static final String f24292r = "stop_reason";

    /* renamed from: w  reason: collision with root package name */
    private static final int f24297w = 0;

    /* renamed from: x  reason: collision with root package name */
    private static final int f24298x = 1;

    /* renamed from: y  reason: collision with root package name */
    private static final int f24299y = 2;

    /* renamed from: z  reason: collision with root package name */
    private static final int f24300z = 3;

    /* renamed from: a  reason: collision with root package name */
    private final String f24301a;

    /* renamed from: b  reason: collision with root package name */
    private final String f24302b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.exoplayer2.database.a f24303c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f24304d;
    @GuardedBy("initializationLock")

    /* renamed from: e  reason: collision with root package name */
    private boolean f24305e;
    private static final String N = p(3, 4);

    /* renamed from: j  reason: collision with root package name */
    private static final String f24284j = "uri";

    /* renamed from: k  reason: collision with root package name */
    private static final String f24285k = "stream_keys";

    /* renamed from: l  reason: collision with root package name */
    private static final String f24286l = "custom_cache_key";

    /* renamed from: o  reason: collision with root package name */
    private static final String f24289o = "start_time_ms";

    /* renamed from: p  reason: collision with root package name */
    private static final String f24290p = "update_time_ms";

    /* renamed from: q  reason: collision with root package name */
    private static final String f24291q = "content_length";

    /* renamed from: s  reason: collision with root package name */
    private static final String f24293s = "failure_reason";

    /* renamed from: t  reason: collision with root package name */
    private static final String f24294t = "percent_downloaded";

    /* renamed from: u  reason: collision with root package name */
    private static final String f24295u = "bytes_downloaded";

    /* renamed from: v  reason: collision with root package name */
    private static final String f24296v = "key_set_id";
    private static final String[] O = {"id", "mime_type", f24284j, f24285k, f24286l, "data", "state", f24289o, f24290p, f24291q, "stop_reason", f24293s, f24294t, f24295u, f24296v};

    /* compiled from: DefaultDownloadIndex.java */
    /* loaded from: classes2.dex */
    private static final class b implements g {

        /* renamed from: a  reason: collision with root package name */
        private final Cursor f24306a;

        @Override // com.google.android.exoplayer2.offline.g
        public e N() {
            return c.n(this.f24306a);
        }

        @Override // com.google.android.exoplayer2.offline.g, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.f24306a.close();
        }

        @Override // com.google.android.exoplayer2.offline.g
        public int getCount() {
            return this.f24306a.getCount();
        }

        @Override // com.google.android.exoplayer2.offline.g
        public int getPosition() {
            return this.f24306a.getPosition();
        }

        @Override // com.google.android.exoplayer2.offline.g
        public /* synthetic */ boolean isAfterLast() {
            return f.a(this);
        }

        @Override // com.google.android.exoplayer2.offline.g
        public /* synthetic */ boolean isBeforeFirst() {
            return f.b(this);
        }

        @Override // com.google.android.exoplayer2.offline.g
        public boolean isClosed() {
            return this.f24306a.isClosed();
        }

        @Override // com.google.android.exoplayer2.offline.g
        public /* synthetic */ boolean isFirst() {
            return f.c(this);
        }

        @Override // com.google.android.exoplayer2.offline.g
        public /* synthetic */ boolean isLast() {
            return f.d(this);
        }

        @Override // com.google.android.exoplayer2.offline.g
        public /* synthetic */ boolean moveToFirst() {
            return f.e(this);
        }

        @Override // com.google.android.exoplayer2.offline.g
        public /* synthetic */ boolean moveToLast() {
            return f.f(this);
        }

        @Override // com.google.android.exoplayer2.offline.g
        public /* synthetic */ boolean moveToNext() {
            return f.g(this);
        }

        @Override // com.google.android.exoplayer2.offline.g
        public boolean moveToPosition(int i4) {
            return this.f24306a.moveToPosition(i4);
        }

        @Override // com.google.android.exoplayer2.offline.g
        public /* synthetic */ boolean moveToPrevious() {
            return f.h(this);
        }

        private b(Cursor cursor) {
            this.f24306a = cursor;
        }
    }

    public c(com.google.android.exoplayer2.database.a aVar) {
        this(aVar, "");
    }

    private static List<StreamKey> j(String str) {
        ArrayList arrayList = new ArrayList();
        if (str.isEmpty()) {
            return arrayList;
        }
        for (String str2 : z0.l1(str, ",")) {
            String[] l12 = z0.l1(str2, "\\.");
            com.google.android.exoplayer2.util.a.i(l12.length == 3);
            arrayList.add(new StreamKey(Integer.parseInt(l12[0]), Integer.parseInt(l12[1]), Integer.parseInt(l12[2])));
        }
        return arrayList;
    }

    @VisibleForTesting
    static String k(List<StreamKey> list) {
        StringBuilder sb = new StringBuilder();
        for (int i4 = 0; i4 < list.size(); i4++) {
            StreamKey streamKey = list.get(i4);
            sb.append(streamKey.periodIndex);
            sb.append('.');
            sb.append(streamKey.groupIndex);
            sb.append('.');
            sb.append(streamKey.trackIndex);
            sb.append(',');
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        return sb.toString();
    }

    private void l() throws DatabaseIOException {
        synchronized (this.f24304d) {
            if (this.f24305e) {
                return;
            }
            try {
                int b10 = com.google.android.exoplayer2.database.d.b(this.f24303c.getReadableDatabase(), 0, this.f24301a);
                if (b10 != 3) {
                    SQLiteDatabase writableDatabase = this.f24303c.getWritableDatabase();
                    writableDatabase.beginTransactionNonExclusive();
                    try {
                        com.google.android.exoplayer2.database.d.d(writableDatabase, 0, this.f24301a, 3);
                        List<e> r9 = b10 == 2 ? r(writableDatabase) : new ArrayList<>();
                        String valueOf = String.valueOf(this.f24302b);
                        writableDatabase.execSQL(valueOf.length() != 0 ? "DROP TABLE IF EXISTS ".concat(valueOf) : new String("DROP TABLE IF EXISTS "));
                        String str = this.f24302b;
                        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 415);
                        sb.append("CREATE TABLE ");
                        sb.append(str);
                        sb.append(" ");
                        sb.append(P);
                        writableDatabase.execSQL(sb.toString());
                        for (e eVar : r9) {
                            s(eVar, writableDatabase);
                        }
                        writableDatabase.setTransactionSuccessful();
                        writableDatabase.endTransaction();
                    } catch (Throwable th) {
                        writableDatabase.endTransaction();
                        throw th;
                    }
                }
                this.f24305e = true;
            } catch (SQLException e4) {
                throw new DatabaseIOException(e4);
            }
        }
    }

    private Cursor m(String str, @Nullable String[] strArr) throws DatabaseIOException {
        try {
            return this.f24303c.getReadableDatabase().query(this.f24302b, O, str, strArr, null, null, "start_time_ms ASC");
        } catch (SQLiteException e4) {
            throw new DatabaseIOException(e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static e n(Cursor cursor) {
        byte[] blob = cursor.getBlob(14);
        DownloadRequest.b f10 = new DownloadRequest.b(cursor.getString(0), Uri.parse(cursor.getString(2))).e(cursor.getString(1)).f(j(cursor.getString(3)));
        if (blob.length <= 0) {
            blob = null;
        }
        DownloadRequest a10 = f10.d(blob).b(cursor.getString(4)).c(cursor.getBlob(5)).a();
        u uVar = new u();
        uVar.f24429a = cursor.getLong(13);
        uVar.f24430b = cursor.getFloat(12);
        int i4 = cursor.getInt(6);
        return new e(a10, i4, cursor.getLong(7), cursor.getLong(8), cursor.getLong(9), cursor.getInt(10), i4 == 4 ? cursor.getInt(11) : 0, uVar);
    }

    private static e o(Cursor cursor) {
        DownloadRequest a10 = new DownloadRequest.b(cursor.getString(0), Uri.parse(cursor.getString(2))).e(q(cursor.getString(1))).f(j(cursor.getString(3))).b(cursor.getString(4)).c(cursor.getBlob(5)).a();
        u uVar = new u();
        uVar.f24429a = cursor.getLong(13);
        uVar.f24430b = cursor.getFloat(12);
        int i4 = cursor.getInt(6);
        return new e(a10, i4, cursor.getLong(7), cursor.getLong(8), cursor.getLong(9), cursor.getInt(10), i4 == 4 ? cursor.getInt(11) : 0, uVar);
    }

    private static String p(int... iArr) {
        if (iArr.length == 0) {
            return "1";
        }
        StringBuilder sb = new StringBuilder();
        sb.append("state");
        sb.append(" IN (");
        for (int i4 = 0; i4 < iArr.length; i4++) {
            if (i4 > 0) {
                sb.append(',');
            }
            sb.append(iArr[i4]);
        }
        sb.append(')');
        return sb.toString();
    }

    private static String q(String str) {
        return "dash".equals(str) ? com.google.android.exoplayer2.util.a0.f27450j0 : "hls".equals(str) ? com.google.android.exoplayer2.util.a0.f27452k0 : "ss".equals(str) ? com.google.android.exoplayer2.util.a0.f27454l0 : com.google.android.exoplayer2.util.a0.f27479y;
    }

    private List<e> r(SQLiteDatabase sQLiteDatabase) {
        ArrayList arrayList = new ArrayList();
        if (z0.q1(sQLiteDatabase, this.f24302b)) {
            Cursor query = sQLiteDatabase.query(this.f24302b, new String[]{"id", MessageBundle.TITLE_ENTRY, f24284j, f24285k, f24286l, "data", "state", f24289o, f24290p, f24291q, "stop_reason", f24293s, f24294t, f24295u}, null, null, null, null, null);
            while (query.moveToNext()) {
                try {
                    arrayList.add(o(query));
                } catch (Throwable th) {
                    if (query != null) {
                        try {
                            query.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                    }
                    throw th;
                }
            }
            query.close();
            return arrayList;
        }
        return arrayList;
    }

    private void s(e eVar, SQLiteDatabase sQLiteDatabase) {
        byte[] bArr = eVar.f24330a.keySetId;
        if (bArr == null) {
            bArr = z0.f27748f;
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", eVar.f24330a.id);
        contentValues.put("mime_type", eVar.f24330a.mimeType);
        contentValues.put(f24284j, eVar.f24330a.uri.toString());
        contentValues.put(f24285k, k(eVar.f24330a.streamKeys));
        contentValues.put(f24286l, eVar.f24330a.customCacheKey);
        contentValues.put("data", eVar.f24330a.data);
        contentValues.put("state", Integer.valueOf(eVar.f24331b));
        contentValues.put(f24289o, Long.valueOf(eVar.f24332c));
        contentValues.put(f24290p, Long.valueOf(eVar.f24333d));
        contentValues.put(f24291q, Long.valueOf(eVar.f24334e));
        contentValues.put("stop_reason", Integer.valueOf(eVar.f24335f));
        contentValues.put(f24293s, Integer.valueOf(eVar.f24336g));
        contentValues.put(f24294t, Float.valueOf(eVar.b()));
        contentValues.put(f24295u, Long.valueOf(eVar.a()));
        contentValues.put(f24296v, bArr);
        sQLiteDatabase.replaceOrThrow(this.f24302b, null, contentValues);
    }

    @Override // com.google.android.exoplayer2.offline.f0
    public void a(String str, int i4) throws DatabaseIOException {
        l();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("stop_reason", Integer.valueOf(i4));
            SQLiteDatabase writableDatabase = this.f24303c.getWritableDatabase();
            String str2 = this.f24302b;
            String str3 = N;
            StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 11);
            sb.append(str3);
            sb.append(" AND ");
            sb.append(L);
            writableDatabase.update(str2, contentValues, sb.toString(), new String[]{str});
        } catch (SQLException e4) {
            throw new DatabaseIOException(e4);
        }
    }

    @Override // com.google.android.exoplayer2.offline.f0
    public void b(String str) throws DatabaseIOException {
        l();
        try {
            this.f24303c.getWritableDatabase().delete(this.f24302b, L, new String[]{str});
        } catch (SQLiteException e4) {
            throw new DatabaseIOException(e4);
        }
    }

    @Override // com.google.android.exoplayer2.offline.f0
    public void c(int i4) throws DatabaseIOException {
        l();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("stop_reason", Integer.valueOf(i4));
            this.f24303c.getWritableDatabase().update(this.f24302b, contentValues, N, null);
        } catch (SQLException e4) {
            throw new DatabaseIOException(e4);
        }
    }

    @Override // com.google.android.exoplayer2.offline.o
    public g d(int... iArr) throws DatabaseIOException {
        l();
        return new b(m(p(iArr), null));
    }

    @Override // com.google.android.exoplayer2.offline.f0
    public void e() throws DatabaseIOException {
        l();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("state", (Integer) 5);
            contentValues.put(f24293s, (Integer) 0);
            this.f24303c.getWritableDatabase().update(this.f24302b, contentValues, null, null);
        } catch (SQLException e4) {
            throw new DatabaseIOException(e4);
        }
    }

    @Override // com.google.android.exoplayer2.offline.f0
    public void f() throws DatabaseIOException {
        l();
        try {
            ContentValues contentValues = new ContentValues();
            contentValues.put("state", (Integer) 0);
            this.f24303c.getWritableDatabase().update(this.f24302b, contentValues, M, null);
        } catch (SQLException e4) {
            throw new DatabaseIOException(e4);
        }
    }

    @Override // com.google.android.exoplayer2.offline.o
    @Nullable
    public e g(String str) throws DatabaseIOException {
        l();
        try {
            Cursor m9 = m(L, new String[]{str});
            if (m9.getCount() == 0) {
                m9.close();
                return null;
            }
            m9.moveToNext();
            e n9 = n(m9);
            m9.close();
            return n9;
        } catch (SQLiteException e4) {
            throw new DatabaseIOException(e4);
        }
    }

    @Override // com.google.android.exoplayer2.offline.f0
    public void h(e eVar) throws DatabaseIOException {
        l();
        try {
            s(eVar, this.f24303c.getWritableDatabase());
        } catch (SQLiteException e4) {
            throw new DatabaseIOException(e4);
        }
    }

    public c(com.google.android.exoplayer2.database.a aVar, String str) {
        this.f24301a = str;
        this.f24303c = aVar;
        String valueOf = String.valueOf(str);
        this.f24302b = valueOf.length() != 0 ? f24280f.concat(valueOf) : new String(f24280f);
        this.f24304d = new Object();
    }
}
