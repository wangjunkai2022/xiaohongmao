package io.sentry.cache;

import io.sentry.SentryItemType;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.Session;
import io.sentry.clientreport.DiscardReason;
import io.sentry.f4;
import io.sentry.l3;
import io.sentry.u0;
import io.sentry.util.l;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import m8.g;
import m8.h;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CacheStrategy.java */
/* loaded from: classes4.dex */
public abstract class b {

    /* renamed from: e  reason: collision with root package name */
    protected static final Charset f83052e = Charset.forName("UTF-8");
    @g

    /* renamed from: a  reason: collision with root package name */
    protected final SentryOptions f83053a;
    @g

    /* renamed from: b  reason: collision with root package name */
    protected final u0 f83054b;
    @g

    /* renamed from: c  reason: collision with root package name */
    protected final File f83055c;

    /* renamed from: d  reason: collision with root package name */
    private final int f83056d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(@g SentryOptions sentryOptions, @g String str, int i4) {
        l.c(str, "Directory is required.");
        this.f83053a = (SentryOptions) l.c(sentryOptions, "SentryOptions is required.");
        this.f83054b = sentryOptions.getSerializer();
        this.f83055c = new File(str);
        this.f83056d = i4;
    }

    @g
    private l3 b(@g l3 l3Var, @g f4 f4Var) {
        ArrayList arrayList = new ArrayList();
        for (f4 f4Var2 : l3Var.e()) {
            arrayList.add(f4Var2);
        }
        arrayList.add(f4Var);
        return new l3(l3Var.d(), arrayList);
    }

    @h
    private Session c(@g l3 l3Var) {
        for (f4 f4Var : l3Var.e()) {
            if (e(f4Var)) {
                return l(f4Var);
            }
        }
        return null;
    }

    private boolean e(@h f4 f4Var) {
        if (f4Var == null) {
            return false;
        }
        return f4Var.C().e().equals(SentryItemType.Session);
    }

    private boolean f(@g l3 l3Var) {
        return l3Var.e().iterator().hasNext();
    }

    private boolean g(@g Session session) {
        return session.q().equals(Session.State.Ok) && session.o() != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int h(File file, File file2) {
        return Long.compare(file.lastModified(), file2.lastModified());
    }

    private void j(@g File file, @g File[] fileArr) {
        Boolean j4;
        int i4;
        File file2;
        l3 k10;
        f4 f4Var;
        Session l10;
        l3 k11 = k(file);
        if (k11 == null || !f(k11)) {
            return;
        }
        this.f83053a.getClientReportRecorder().b(DiscardReason.CACHE_OVERFLOW, k11);
        Session c10 = c(k11);
        if (c10 == null || !g(c10) || (j4 = c10.j()) == null || !j4.booleanValue()) {
            return;
        }
        int length = fileArr.length;
        for (i4 = 0; i4 < length; i4++) {
            file2 = fileArr[i4];
            k10 = k(file2);
            if (k10 != null && f(k10)) {
                f4Var = null;
                Iterator<f4> it = k10.e().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    f4 next = it.next();
                    if (e(next) && (l10 = l(next)) != null && g(l10)) {
                        Boolean j10 = l10.j();
                        if (j10 != null && j10.booleanValue()) {
                            this.f83053a.getLogger().c(SentryLevel.ERROR, "Session %s has 2 times the init flag.", c10.o());
                            return;
                        } else if (c10.o() != null && c10.o().equals(l10.o())) {
                            l10.t();
                            try {
                                f4Var = f4.x(this.f83054b, l10);
                                it.remove();
                                break;
                            } catch (IOException e4) {
                                this.f83053a.getLogger().a(SentryLevel.ERROR, e4, "Failed to create new envelope item for the session %s", c10.o());
                            }
                        }
                    }
                }
            }
        }
        return;
        if (f4Var != null) {
            l3 b10 = b(k10, f4Var);
            long lastModified = file2.lastModified();
            if (!file2.delete()) {
                this.f83053a.getLogger().c(SentryLevel.WARNING, "File can't be deleted: %s", file2.getAbsolutePath());
            }
            n(b10, file2, lastModified);
            return;
        }
    }

    @h
    private l3 k(@g File file) {
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
            l3 d4 = this.f83054b.d(bufferedInputStream);
            bufferedInputStream.close();
            return d4;
        } catch (IOException e4) {
            this.f83053a.getLogger().b(SentryLevel.ERROR, "Failed to deserialize the envelope.", e4);
            return null;
        }
    }

    @h
    private Session l(@g f4 f4Var) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(f4Var.A()), f83052e));
            Session session = (Session) this.f83054b.c(bufferedReader, Session.class);
            bufferedReader.close();
            return session;
        } catch (Throwable th) {
            this.f83053a.getLogger().b(SentryLevel.ERROR, "Failed to deserialize the session.", th);
            return null;
        }
    }

    private void n(@g l3 l3Var, @g File file, long j4) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            this.f83054b.b(l3Var, fileOutputStream);
            file.setLastModified(j4);
            fileOutputStream.close();
        } catch (Throwable th) {
            this.f83053a.getLogger().b(SentryLevel.ERROR, "Failed to serialize the new envelope to the disk.", th);
        }
    }

    private void o(@g File[] fileArr) {
        if (fileArr.length > 1) {
            Arrays.sort(fileArr, a.f83051a);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean d() {
        if (this.f83055c.isDirectory() && this.f83055c.canWrite() && this.f83055c.canRead()) {
            return true;
        }
        this.f83053a.getLogger().c(SentryLevel.ERROR, "The directory for caching files is inaccessible.: %s", this.f83055c.getAbsolutePath());
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void m(@g File[] fileArr) {
        int length = fileArr.length;
        if (length >= this.f83056d) {
            this.f83053a.getLogger().c(SentryLevel.WARNING, "Cache folder if full (respecting maxSize). Rotating files", new Object[0]);
            int i4 = (length - this.f83056d) + 1;
            o(fileArr);
            File[] fileArr2 = (File[]) Arrays.copyOfRange(fileArr, i4, length);
            for (int i10 = 0; i10 < i4; i10++) {
                File file = fileArr[i10];
                j(file, fileArr2);
                if (!file.delete()) {
                    this.f83053a.getLogger().c(SentryLevel.WARNING, "File can't be deleted: %s", file.getAbsolutePath());
                }
            }
        }
    }
}
