package io.sentry.cache;

import io.sentry.SentryItemType;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.Session;
import io.sentry.f4;
import io.sentry.k;
import io.sentry.l3;
import io.sentry.transport.s;
import io.sentry.util.l;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import java.util.WeakHashMap;
import m8.a;
import m8.g;
import m8.h;

/* compiled from: EnvelopeCache.java */
@a.c
/* loaded from: classes4.dex */
public class d extends b implements f {

    /* renamed from: g  reason: collision with root package name */
    public static final String f83058g = ".envelope";

    /* renamed from: h  reason: collision with root package name */
    public static final String f83059h = "session";

    /* renamed from: i  reason: collision with root package name */
    static final String f83060i = ".json";

    /* renamed from: j  reason: collision with root package name */
    public static final String f83061j = "last_crash";

    /* renamed from: k  reason: collision with root package name */
    public static final String f83062k = ".sentry-native/last_crash";

    /* renamed from: l  reason: collision with root package name */
    public static final String f83063l = "startup_crash";
    @g

    /* renamed from: f  reason: collision with root package name */
    private final Map<l3, String> f83064f;

    public d(@g SentryOptions sentryOptions, @g String str, int i4) {
        super(sentryOptions, str, i4);
        this.f83064f = new WeakHashMap();
    }

    private void B(@g File file, @g l3 l3Var) {
        if (file.exists()) {
            this.f83053a.getLogger().c(SentryLevel.DEBUG, "Overwriting envelope to offline storage: %s", file.getAbsolutePath());
            if (!file.delete()) {
                this.f83053a.getLogger().c(SentryLevel.ERROR, "Failed to delete: %s", file.getAbsolutePath());
            }
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            this.f83054b.b(l3Var, fileOutputStream);
            fileOutputStream.close();
        } catch (Throwable th) {
            this.f83053a.getLogger().a(SentryLevel.ERROR, th, "Error writing Envelope %s to offline storage", file.getAbsolutePath());
        }
    }

    private void C(@g File file, @g Session session) {
        if (file.exists()) {
            this.f83053a.getLogger().c(SentryLevel.DEBUG, "Overwriting session to offline storage: %s", session.o());
            if (!file.delete()) {
                this.f83053a.getLogger().c(SentryLevel.ERROR, "Failed to delete: %s", file.getAbsolutePath());
            }
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(fileOutputStream, b.f83052e));
            try {
                this.f83054b.a(session, bufferedWriter);
                bufferedWriter.close();
                fileOutputStream.close();
            } catch (Throwable th) {
                try {
                    bufferedWriter.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (Throwable th3) {
            this.f83053a.getLogger().a(SentryLevel.ERROR, th3, "Error writing Session to offline storage: %s", session.o());
        }
    }

    @g
    private File[] q() {
        File[] listFiles;
        return (!d() || (listFiles = this.f83055c.listFiles(c.f83057a)) == null) ? new File[0] : listFiles;
    }

    @g
    public static f r(@g SentryOptions sentryOptions) {
        String cacheDirPath = sentryOptions.getCacheDirPath();
        int maxCacheItems = sentryOptions.getMaxCacheItems();
        if (cacheDirPath == null) {
            sentryOptions.getLogger().c(SentryLevel.WARNING, "cacheDirPath is null, returning NoOpEnvelopeCache", new Object[0]);
            return s.a();
        }
        return new d(sentryOptions, cacheDirPath, maxCacheItems);
    }

    @g
    private File s() {
        return new File(this.f83055c.getAbsolutePath(), "session.json");
    }

    @g
    private synchronized File t(@g l3 l3Var) {
        String uuid;
        String str;
        if (this.f83064f.containsKey(l3Var)) {
            str = this.f83064f.get(l3Var);
        } else {
            if (l3Var.d().a() != null) {
                uuid = l3Var.d().a().toString();
            } else {
                uuid = UUID.randomUUID().toString();
            }
            String str2 = uuid + f83058g;
            this.f83064f.put(l3Var, str2);
            str = str2;
        }
        return new File(this.f83055c.getAbsolutePath(), str);
    }

    @h
    private Date u(@g File file) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), b.f83052e));
            String readLine = bufferedReader.readLine();
            this.f83053a.getLogger().c(SentryLevel.DEBUG, "Crash marker file has %s timestamp.", readLine);
            Date e4 = k.e(readLine);
            bufferedReader.close();
            return e4;
        } catch (IOException e10) {
            this.f83053a.getLogger().b(SentryLevel.ERROR, "Error reading the crash marker file.", e10);
            return null;
        } catch (IllegalArgumentException e11) {
            this.f83053a.getLogger().a(SentryLevel.ERROR, e11, "Error converting the crash timestamp.", new Object[0]);
            return null;
        }
    }

    private void w(@g File file, @g l3 l3Var) {
        Iterable<f4> e4 = l3Var.e();
        if (e4.iterator().hasNext()) {
            f4 next = e4.iterator().next();
            if (SentryItemType.Session.equals(next.C().e())) {
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(next.A()), b.f83052e));
                    Session session = (Session) this.f83054b.c(bufferedReader, Session.class);
                    if (session == null) {
                        this.f83053a.getLogger().c(SentryLevel.ERROR, "Item of type %s returned null by the parser.", next.C().e());
                    } else {
                        C(file, session);
                    }
                    bufferedReader.close();
                    return;
                } catch (Throwable th) {
                    this.f83053a.getLogger().b(SentryLevel.ERROR, "Item failed to process.", th);
                    return;
                }
            }
            this.f83053a.getLogger().c(SentryLevel.INFO, "Current envelope has a different envelope type %s", next.C().e());
            return;
        }
        this.f83053a.getLogger().c(SentryLevel.INFO, "Current envelope %s is empty", file.getAbsolutePath());
    }

    private void z() {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(this.f83053a.getCacheDirPath(), f83061j));
            fileOutputStream.write(k.g(k.c()).getBytes(b.f83052e));
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (Throwable th) {
            this.f83053a.getLogger().b(SentryLevel.ERROR, "Error writing the crash marker file to the disk", th);
        }
    }

    @Override // io.sentry.cache.f
    public /* synthetic */ void A(l3 l3Var) {
        e.a(this, l3Var);
    }

    @Override // io.sentry.cache.f
    public void i(@g l3 l3Var) {
        l.c(l3Var, "Envelope is required.");
        File t9 = t(l3Var);
        if (t9.exists()) {
            this.f83053a.getLogger().c(SentryLevel.DEBUG, "Discarding envelope from cache: %s", t9.getAbsolutePath());
            if (t9.delete()) {
                return;
            }
            this.f83053a.getLogger().c(SentryLevel.ERROR, "Failed to delete envelope: %s", t9.getAbsolutePath());
            return;
        }
        this.f83053a.getLogger().c(SentryLevel.DEBUG, "Envelope was not cached: %s", t9.getAbsolutePath());
    }

    @Override // java.lang.Iterable
    @g
    public Iterator<l3> iterator() {
        BufferedInputStream bufferedInputStream;
        File[] q9 = q();
        ArrayList arrayList = new ArrayList(q9.length);
        for (File file : q9) {
            try {
                bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            } catch (FileNotFoundException unused) {
                this.f83053a.getLogger().c(SentryLevel.DEBUG, "Envelope file '%s' disappeared while converting all cached files to envelopes.", file.getAbsolutePath());
            } catch (IOException e4) {
                this.f83053a.getLogger().b(SentryLevel.ERROR, String.format("Error while reading cached envelope from file %s", file.getAbsolutePath()), e4);
            }
            try {
                arrayList.add(this.f83054b.d(bufferedInputStream));
                bufferedInputStream.close();
            } catch (Throwable th) {
                try {
                    bufferedInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
                break;
            }
        }
        return arrayList.iterator();
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0185  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void y(@m8.g io.sentry.l3 r13, @m8.g io.sentry.b0 r14) {
        /*
            Method dump skipped, instructions count: 425
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.cache.d.y(io.sentry.l3, io.sentry.b0):void");
    }
}
