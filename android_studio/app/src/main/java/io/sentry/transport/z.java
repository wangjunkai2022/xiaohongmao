package io.sentry.transport;

import io.sentry.DataCategory;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.clientreport.DiscardReason;
import io.sentry.f4;
import io.sentry.l3;
import io.sentry.util.h;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: RateLimiter.java */
/* loaded from: classes4.dex */
public final class z {

    /* renamed from: d  reason: collision with root package name */
    private static final int f84052d = 60000;
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final o f84053a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final SentryOptions f84054b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final Map<DataCategory, Date> f84055c;

    public z(@m8.g o oVar, @m8.g SentryOptions sentryOptions) {
        this.f84055c = new ConcurrentHashMap();
        this.f84053a = oVar;
        this.f84054b = sentryOptions;
    }

    private void c(@m8.g DataCategory dataCategory, @m8.g Date date) {
        Date date2 = this.f84055c.get(dataCategory);
        if (date2 == null || date.after(date2)) {
            this.f84055c.put(dataCategory, date);
        }
    }

    @m8.g
    private DataCategory e(@m8.g String str) {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1963501277:
                if (str.equals("attachment")) {
                    c10 = 0;
                    break;
                }
                break;
            case 96891546:
                if (str.equals("event")) {
                    c10 = 1;
                    break;
                }
                break;
            case 1984987798:
                if (str.equals(io.sentry.cache.d.f83059h)) {
                    c10 = 2;
                    break;
                }
                break;
            case 2141246174:
                if (str.equals("transaction")) {
                    c10 = 3;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return DataCategory.Attachment;
            case 1:
                return DataCategory.Error;
            case 2:
                return DataCategory.Session;
            case 3:
                return DataCategory.Transaction;
            default:
                return DataCategory.Unknown;
        }
    }

    private boolean f(@m8.g String str) {
        Date date;
        DataCategory e4 = e(str);
        Date date2 = new Date(this.f84053a.a());
        Date date3 = this.f84055c.get(DataCategory.All);
        if (date3 == null || date2.after(date3)) {
            if (DataCategory.Unknown.equals(e4) || (date = this.f84055c.get(e4)) == null) {
                return false;
            }
            return !date2.after(date);
        }
        return true;
    }

    private static void i(@m8.g io.sentry.b0 b0Var, final boolean z9) {
        io.sentry.util.h.n(b0Var, io.sentry.hints.m.class, y.f84051a);
        io.sentry.util.h.n(b0Var, io.sentry.hints.h.class, new h.a() { // from class: io.sentry.transport.x
            @Override // io.sentry.util.h.a
            public final void accept(Object obj) {
                ((io.sentry.hints.h) obj).c(z9);
            }
        });
    }

    private long j(@m8.h String str) {
        if (str != null) {
            try {
                return (long) (Double.parseDouble(str) * 1000.0d);
            } catch (NumberFormatException unused) {
            }
        }
        return com.google.android.exoplayer2.upstream.w.f27407d;
    }

    @m8.h
    public l3 d(@m8.g l3 l3Var, @m8.g io.sentry.b0 b0Var) {
        ArrayList arrayList = null;
        for (f4 f4Var : l3Var.e()) {
            if (f(f4Var.C().e().getItemType())) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(f4Var);
                this.f84054b.getClientReportRecorder().c(DiscardReason.RATELIMIT_BACKOFF, f4Var);
            }
        }
        if (arrayList != null) {
            this.f84054b.getLogger().c(SentryLevel.INFO, "%d items will be dropped due rate limiting.", Integer.valueOf(arrayList.size()));
            ArrayList arrayList2 = new ArrayList();
            for (f4 f4Var2 : l3Var.e()) {
                if (!arrayList.contains(f4Var2)) {
                    arrayList2.add(f4Var2);
                }
            }
            if (arrayList2.isEmpty()) {
                this.f84054b.getLogger().c(SentryLevel.INFO, "Envelope discarded due all items rate limited.", new Object[0]);
                i(b0Var, false);
                return null;
            }
            return new l3(l3Var.d(), arrayList2);
        }
        return l3Var;
    }

    public void k(@m8.h String str, @m8.h String str2, int i4) {
        String[] split;
        if (str == null) {
            if (i4 == 429) {
                c(DataCategory.All, new Date(this.f84053a.a() + j(str2)));
                return;
            }
            return;
        }
        int i10 = -1;
        String[] split2 = str.split(",", -1);
        int length = split2.length;
        int i11 = 0;
        while (i11 < length) {
            String[] split3 = split2[i11].replace(" ", "").split(":", i10);
            if (split3.length > 0) {
                long j4 = j(split3[0]);
                if (split3.length > 1) {
                    String str3 = split3[1];
                    Date date = new Date(this.f84053a.a() + j4);
                    if (str3 != null && !str3.isEmpty()) {
                        for (String str4 : str3.split(com.alipay.sdk.util.i.f6965b, i10)) {
                            DataCategory dataCategory = DataCategory.Unknown;
                            try {
                                String c10 = io.sentry.util.q.c(str4);
                                if (c10 != null) {
                                    dataCategory = DataCategory.valueOf(c10);
                                } else {
                                    this.f84054b.getLogger().c(SentryLevel.ERROR, "Couldn't capitalize: %s", str4);
                                }
                            } catch (IllegalArgumentException e4) {
                                this.f84054b.getLogger().a(SentryLevel.INFO, e4, "Unknown category: %s", str4);
                            }
                            if (!DataCategory.Unknown.equals(dataCategory)) {
                                c(dataCategory, date);
                            }
                        }
                    } else {
                        c(DataCategory.All, date);
                    }
                }
            }
            i11++;
            i10 = -1;
        }
    }

    public z(@m8.g SentryOptions sentryOptions) {
        this(m.b(), sentryOptions);
    }
}
