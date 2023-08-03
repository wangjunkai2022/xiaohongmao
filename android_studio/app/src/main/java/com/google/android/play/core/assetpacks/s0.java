package com.google.android.play.core.assetpacks;

import io.sentry.instrumentation.file.h;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.SequenceInputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class s0 extends com.google.android.play.core.internal.l1 {

    /* renamed from: a  reason: collision with root package name */
    private final File f31568a;

    /* renamed from: b  reason: collision with root package name */
    private final File f31569b;

    /* renamed from: c  reason: collision with root package name */
    private final NavigableMap f31570c = new TreeMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public s0(File file, File file2) throws IOException {
        this.f31568a = file;
        this.f31569b = file2;
        List<File> a10 = a4.a(file, file2);
        if (!a10.isEmpty()) {
            long j4 = 0;
            for (File file3 : a10) {
                this.f31570c.put(Long.valueOf(j4), file3);
                j4 += file3.length();
            }
            return;
        }
        throw new t1(String.format("Virtualized slice archive empty for %s, %s", file, file2));
    }

    private final InputStream h(long j4, Long l10) throws IOException {
        File file = (File) this.f31570c.get(l10);
        FileInputStream a10 = h.b.a(new FileInputStream(file), file);
        if (a10.skip(j4 - l10.longValue()) == j4 - l10.longValue()) {
            return a10;
        }
        throw new t1(String.format("Virtualized slice archive corrupt, could not skip in file with key %s", l10));
    }

    @Override // com.google.android.play.core.internal.l1
    public final long a() {
        Map.Entry lastEntry = this.f31570c.lastEntry();
        return ((Long) lastEntry.getKey()).longValue() + ((File) lastEntry.getValue()).length();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.play.core.internal.l1
    public final InputStream b(long j4, long j10) throws IOException {
        if (j4 >= 0 && j10 >= 0) {
            long j11 = j4 + j10;
            if (j11 <= a()) {
                Long l10 = (Long) this.f31570c.floorKey(Long.valueOf(j4));
                Long l11 = (Long) this.f31570c.floorKey(Long.valueOf(j11));
                if (l10.equals(l11)) {
                    return new r0(h(j4, l10), j10);
                }
                ArrayList arrayList = new ArrayList();
                arrayList.add(h(j4, l10));
                Collection values = this.f31570c.subMap(l10, false, l11, false).values();
                if (!values.isEmpty()) {
                    arrayList.add(new b3(Collections.enumeration(values)));
                }
                File file = (File) this.f31570c.get(l11);
                arrayList.add(new r0(h.b.a(new FileInputStream(file), file), j10 - (l11.longValue() - j4)));
                return new SequenceInputStream(Collections.enumeration(arrayList));
            }
            throw new t1(String.format("Trying to access archive out of bounds. Archive ends at: %s. Tried accessing: %s", Long.valueOf(a()), Long.valueOf(j11)));
        }
        throw new t1(String.format("Invalid input parameters %s, %s", Long.valueOf(j4), Long.valueOf(j10)));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
