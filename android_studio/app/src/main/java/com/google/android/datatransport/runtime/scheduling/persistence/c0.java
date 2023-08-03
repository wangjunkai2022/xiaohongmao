package com.google.android.datatransport.runtime.scheduling.persistence;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.android.datatransport.runtime.i;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import io.sentry.protocol.t;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import o2.a;

/* compiled from: SQLiteEventStore.java */
@u7.f
@WorkerThread
/* loaded from: classes2.dex */
public class c0 implements com.google.android.datatransport.runtime.scheduling.persistence.c, o2.a {

    /* renamed from: e  reason: collision with root package name */
    private static final String f20582e = "SQLiteEventStore";

    /* renamed from: f  reason: collision with root package name */
    static final int f20583f = 16;

    /* renamed from: g  reason: collision with root package name */
    private static final int f20584g = 50;

    /* renamed from: h  reason: collision with root package name */
    private static final com.google.android.datatransport.c f20585h = com.google.android.datatransport.c.b("proto");

    /* renamed from: a  reason: collision with root package name */
    private final i0 f20586a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.time.a f20587b;

    /* renamed from: c  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.time.a f20588c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.scheduling.persistence.d f20589d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SQLiteEventStore.java */
    /* loaded from: classes2.dex */
    public interface b<T, U> {
        U apply(T t9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SQLiteEventStore.java */
    /* loaded from: classes2.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        final String f20590a;

        /* renamed from: b  reason: collision with root package name */
        final String f20591b;

        private c(String str, String str2) {
            this.f20590a = str;
            this.f20591b = str2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SQLiteEventStore.java */
    /* loaded from: classes2.dex */
    public interface d<T> {
        T a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @u7.a
    public c0(@com.google.android.datatransport.runtime.time.h com.google.android.datatransport.runtime.time.a aVar, @com.google.android.datatransport.runtime.time.b com.google.android.datatransport.runtime.time.a aVar2, com.google.android.datatransport.runtime.scheduling.persistence.d dVar, i0 i0Var) {
        this.f20586a = i0Var;
        this.f20587b = aVar;
        this.f20588c = aVar2;
        this.f20589d = dVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object D(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.delete("events", null, new String[0]);
        sQLiteDatabase.delete("transport_contexts", null, new String[0]);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object G(Throwable th) {
        throw new SynchronizationException("Timed out while trying to acquire the lock.", th);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ SQLiteDatabase H(Throwable th) {
        throw new SynchronizationException("Timed out while trying to open db.", th);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Long I(Cursor cursor) {
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Long J(Cursor cursor) {
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Boolean K(c0 c0Var, com.google.android.datatransport.runtime.o oVar, SQLiteDatabase sQLiteDatabase) {
        Long q9 = c0Var.q(sQLiteDatabase, oVar);
        if (q9 == null) {
            return Boolean.FALSE;
        }
        return (Boolean) u0(c0Var.k().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{q9.toString()}), v.a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ List L(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            arrayList.add(com.google.android.datatransport.runtime.o.a().b(cursor.getString(1)).d(p2.a.b(cursor.getInt(2))).c(p0(cursor.getString(3))).a());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ List M(SQLiteDatabase sQLiteDatabase) {
        return (List) u0(sQLiteDatabase.rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), u.a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object X(c0 c0Var, List list, com.google.android.datatransport.runtime.o oVar, Cursor cursor) {
        while (cursor.moveToNext()) {
            long j4 = cursor.getLong(0);
            boolean z9 = cursor.getInt(7) != 0;
            i.a k10 = com.google.android.datatransport.runtime.i.a().j(cursor.getString(1)).i(cursor.getLong(2)).k(cursor.getLong(3));
            if (z9) {
                k10.h(new com.google.android.datatransport.runtime.h(s0(cursor.getString(4)), cursor.getBlob(5)));
            } else {
                k10.h(new com.google.android.datatransport.runtime.h(s0(cursor.getString(4)), c0Var.q0(j4)));
            }
            if (!cursor.isNull(6)) {
                k10.g(Integer.valueOf(cursor.getInt(6)));
            }
            list.add(i.a(j4, oVar, k10.d()));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object b0(Map map, Cursor cursor) {
        while (cursor.moveToNext()) {
            long j4 = cursor.getLong(0);
            Set set = (Set) map.get(Long.valueOf(j4));
            if (set == null) {
                set = new HashSet();
                map.put(Long.valueOf(j4), set);
            }
            set.add(new c(cursor.getString(1), cursor.getString(2)));
        }
        return null;
    }

    private void d(SQLiteDatabase sQLiteDatabase) {
        r0(r.b(sQLiteDatabase), s.a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Long d0(c0 c0Var, com.google.android.datatransport.runtime.o oVar, com.google.android.datatransport.runtime.i iVar, SQLiteDatabase sQLiteDatabase) {
        if (c0Var.s()) {
            return -1L;
        }
        long h4 = c0Var.h(sQLiteDatabase, oVar);
        int e4 = c0Var.f20589d.e();
        byte[] a10 = iVar.e().a();
        boolean z9 = a10.length <= e4;
        ContentValues contentValues = new ContentValues();
        contentValues.put("context_id", Long.valueOf(h4));
        contentValues.put("transport_name", iVar.l());
        contentValues.put("timestamp_ms", Long.valueOf(iVar.f()));
        contentValues.put("uptime_ms", Long.valueOf(iVar.m()));
        contentValues.put("payload_encoding", iVar.e().b().a());
        contentValues.put("code", iVar.d());
        contentValues.put("num_attempts", (Integer) 0);
        contentValues.put("inline", Boolean.valueOf(z9));
        contentValues.put("payload", z9 ? a10 : new byte[0]);
        long insert = sQLiteDatabase.insert("events", null, contentValues);
        if (!z9) {
            int ceil = (int) Math.ceil(a10.length / e4);
            for (int i4 = 1; i4 <= ceil; i4++) {
                byte[] copyOfRange = Arrays.copyOfRange(a10, (i4 - 1) * e4, Math.min(i4 * e4, a10.length));
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("event_id", Long.valueOf(insert));
                contentValues2.put("sequence_num", Integer.valueOf(i4));
                contentValues2.put("bytes", copyOfRange);
                sQLiteDatabase.insert("event_payloads", null, contentValues2);
            }
        }
        for (Map.Entry<String, String> entry : iVar.i().entrySet()) {
            ContentValues contentValues3 = new ContentValues();
            contentValues3.put("event_id", Long.valueOf(insert));
            contentValues3.put("name", entry.getKey());
            contentValues3.put("value", entry.getValue());
            sQLiteDatabase.insert("event_metadata", null, contentValues3);
        }
        return Long.valueOf(insert);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ byte[] g0(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        int i4 = 0;
        while (cursor.moveToNext()) {
            byte[] blob = cursor.getBlob(0);
            arrayList.add(blob);
            i4 += blob.length;
        }
        byte[] bArr = new byte[i4];
        int i10 = 0;
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            byte[] bArr2 = (byte[]) arrayList.get(i11);
            System.arraycopy(bArr2, 0, bArr, i10, bArr2.length);
            i10 += bArr2.length;
        }
        return bArr;
    }

    private long getPageSize() {
        return k().compileStatement("PRAGMA page_size").simpleQueryForLong();
    }

    private long h(SQLiteDatabase sQLiteDatabase, com.google.android.datatransport.runtime.o oVar) {
        Long q9 = q(sQLiteDatabase, oVar);
        if (q9 != null) {
            return q9.longValue();
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("backend_name", oVar.b());
        contentValues.put(t.b.f83857b, Integer.valueOf(p2.a.a(oVar.d())));
        contentValues.put("next_request_ms", (Integer) 0);
        if (oVar.c() != null) {
            contentValues.put("extras", Base64.encodeToString(oVar.c(), 0));
        }
        return sQLiteDatabase.insert("transport_contexts", null, contentValues);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object h0(String str, SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.compileStatement(str).execute();
        sQLiteDatabase.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ Object l0(long j4, com.google.android.datatransport.runtime.o oVar, SQLiteDatabase sQLiteDatabase) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("next_request_ms", Long.valueOf(j4));
        if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{oVar.b(), String.valueOf(p2.a.a(oVar.d()))}) < 1) {
            contentValues.put("backend_name", oVar.b());
            contentValues.put(t.b.f83857b, Integer.valueOf(p2.a.a(oVar.d())));
            sQLiteDatabase.insert("transport_contexts", null, contentValues);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<i> n0(SQLiteDatabase sQLiteDatabase, com.google.android.datatransport.runtime.o oVar) {
        ArrayList arrayList = new ArrayList();
        Long q9 = q(sQLiteDatabase, oVar);
        if (q9 == null) {
            return arrayList;
        }
        u0(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", "inline"}, "context_id = ?", new String[]{q9.toString()}, null, null, null, String.valueOf(this.f20589d.d())), o.a(this, arrayList, oVar));
        return arrayList;
    }

    private Map<Long, Set<c>> o0(SQLiteDatabase sQLiteDatabase, List<i> list) {
        HashMap hashMap = new HashMap();
        StringBuilder sb = new StringBuilder("event_id IN (");
        for (int i4 = 0; i4 < list.size(); i4++) {
            sb.append(list.get(i4).c());
            if (i4 < list.size() - 1) {
                sb.append(',');
            }
        }
        sb.append(')');
        u0(sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb.toString(), null, null, null, null), q.a(hashMap));
        return hashMap;
    }

    private long p() {
        return k().compileStatement("PRAGMA page_count").simpleQueryForLong();
    }

    private static byte[] p0(@Nullable String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 0);
    }

    @Nullable
    private Long q(SQLiteDatabase sQLiteDatabase, com.google.android.datatransport.runtime.o oVar) {
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(oVar.b(), String.valueOf(p2.a.a(oVar.d()))));
        if (oVar.c() != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(oVar.c(), 0));
        } else {
            sb.append(" and extras is null");
        }
        return (Long) u0(sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null), y.a());
    }

    private byte[] q0(long j4) {
        return (byte[]) u0(k().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j4)}, null, null, "sequence_num"), p.a());
    }

    private <T> T r0(d<T> dVar, b<Throwable, T> bVar) {
        long a10 = this.f20588c.a();
        while (true) {
            try {
                return dVar.a();
            } catch (SQLiteDatabaseLockedException e4) {
                if (this.f20588c.a() >= this.f20589d.b() + a10) {
                    return bVar.apply(e4);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    private boolean s() {
        return p() * getPageSize() >= this.f20589d.f();
    }

    private static com.google.android.datatransport.c s0(@Nullable String str) {
        if (str == null) {
            return f20585h;
        }
        return com.google.android.datatransport.c.b(str);
    }

    private static String t0(Iterable<i> iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator<i> it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(it.next().c());
            if (it.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    @VisibleForTesting
    static <T> T u0(Cursor cursor, b<Cursor, T> bVar) {
        try {
            return bVar.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    private List<i> y(List<i> list, Map<Long, Set<c>> map) {
        ListIterator<i> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            i next = listIterator.next();
            if (map.containsKey(Long.valueOf(next.c()))) {
                i.a n9 = next.b().n();
                for (c cVar : map.get(Long.valueOf(next.c()))) {
                    n9.c(cVar.f20590a, cVar.f20591b);
                }
                listIterator.set(i.a(next.c(), next.d(), n9.d()));
            }
        }
        return list;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.c
    public long O(com.google.android.datatransport.runtime.o oVar) {
        return ((Long) u0(k().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{oVar.b(), String.valueOf(p2.a.a(oVar.d()))}), a0.a())).longValue();
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.c
    public boolean P(com.google.android.datatransport.runtime.o oVar) {
        return ((Boolean) r(b0.a(this, oVar))).booleanValue();
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.c
    public void R(Iterable<i> iterable) {
        if (iterable.iterator().hasNext()) {
            r(z.a("UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + t0(iterable)));
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.c
    public Iterable<i> U(com.google.android.datatransport.runtime.o oVar) {
        return (Iterable) r(k.a(this, oVar));
    }

    @Override // o2.a
    public <T> T a(a.InterfaceC0791a<T> interfaceC0791a) {
        SQLiteDatabase k10 = k();
        d(k10);
        try {
            T execute = interfaceC0791a.execute();
            k10.setTransactionSuccessful();
            return execute;
        } finally {
            k10.endTransaction();
        }
    }

    @RestrictTo({RestrictTo.Scope.TESTS})
    public void b() {
        r(n.a());
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.c
    public int c() {
        return ((Integer) r(m.a(this.f20587b.a() - this.f20589d.c()))).intValue();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f20586a.close();
    }

    @VisibleForTesting
    long i() {
        return p() * getPageSize();
    }

    @VisibleForTesting
    SQLiteDatabase k() {
        i0 i0Var = this.f20586a;
        i0Var.getClass();
        return (SQLiteDatabase) r0(t.b(i0Var), w.a());
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.c
    @Nullable
    public i k0(com.google.android.datatransport.runtime.o oVar, com.google.android.datatransport.runtime.i iVar) {
        m2.a.d(f20582e, "Storing event with priority=%s, name=%s for destination %s", oVar.d(), iVar.l(), oVar.b());
        long longValue = ((Long) r(x.a(this, oVar, iVar))).longValue();
        if (longValue < 1) {
            return null;
        }
        return i.a(longValue, oVar, iVar);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.c
    public void n(Iterable<i> iterable) {
        if (iterable.iterator().hasNext()) {
            k().compileStatement("DELETE FROM events WHERE _id in " + t0(iterable)).execute();
        }
    }

    @VisibleForTesting
    <T> T r(b<SQLiteDatabase, T> bVar) {
        SQLiteDatabase k10 = k();
        k10.beginTransaction();
        try {
            T apply = bVar.apply(k10);
            k10.setTransactionSuccessful();
            return apply;
        } finally {
            k10.endTransaction();
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.c
    public void t(com.google.android.datatransport.runtime.o oVar, long j4) {
        r(j.a(j4, oVar));
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.c
    public Iterable<com.google.android.datatransport.runtime.o> v() {
        return (Iterable) r(l.a());
    }
}
