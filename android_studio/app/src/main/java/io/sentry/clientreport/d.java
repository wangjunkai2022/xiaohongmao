package io.sentry.clientreport;

import io.sentry.DataCategory;
import io.sentry.SentryItemType;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.f4;
import io.sentry.k;
import io.sentry.l3;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import m8.a;

/* compiled from: ClientReportRecorder.java */
@a.c
/* loaded from: classes4.dex */
public final class d implements f {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final g f83073a = new a();
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final SentryOptions f83074b;

    public d(@m8.g SentryOptions sentryOptions) {
        this.f83074b = sentryOptions;
    }

    private DataCategory e(SentryItemType sentryItemType) {
        if (SentryItemType.Event.equals(sentryItemType)) {
            return DataCategory.Error;
        }
        if (SentryItemType.Session.equals(sentryItemType)) {
            return DataCategory.Session;
        }
        if (SentryItemType.Transaction.equals(sentryItemType)) {
            return DataCategory.Transaction;
        }
        if (SentryItemType.UserFeedback.equals(sentryItemType)) {
            return DataCategory.UserReport;
        }
        if (SentryItemType.Attachment.equals(sentryItemType)) {
            return DataCategory.Attachment;
        }
        return DataCategory.Default;
    }

    private void f(@m8.g String str, @m8.g String str2, @m8.g Long l10) {
        this.f83073a.a(new c(str, str2), l10);
    }

    private void h(@m8.h b bVar) {
        if (bVar == null) {
            return;
        }
        for (e eVar : bVar.a()) {
            f(eVar.c(), eVar.a(), eVar.b());
        }
    }

    @Override // io.sentry.clientreport.f
    public void a(@m8.g DiscardReason discardReason, @m8.g DataCategory dataCategory) {
        try {
            f(discardReason.getReason(), dataCategory.getCategory(), 1L);
        } catch (Throwable th) {
            this.f83074b.getLogger().a(SentryLevel.ERROR, th, "Unable to record lost event.", new Object[0]);
        }
    }

    @Override // io.sentry.clientreport.f
    public void b(@m8.g DiscardReason discardReason, @m8.h l3 l3Var) {
        if (l3Var == null) {
            return;
        }
        try {
            for (f4 f4Var : l3Var.e()) {
                c(discardReason, f4Var);
            }
        } catch (Throwable th) {
            this.f83074b.getLogger().a(SentryLevel.ERROR, th, "Unable to record lost envelope.", new Object[0]);
        }
    }

    @Override // io.sentry.clientreport.f
    public void c(@m8.g DiscardReason discardReason, @m8.h f4 f4Var) {
        if (f4Var == null) {
            return;
        }
        try {
            SentryItemType e4 = f4Var.C().e();
            if (SentryItemType.ClientReport.equals(e4)) {
                try {
                    h(f4Var.z(this.f83074b.getSerializer()));
                } catch (Exception unused) {
                    this.f83074b.getLogger().c(SentryLevel.ERROR, "Unable to restore counts from previous client report.", new Object[0]);
                }
            } else {
                f(discardReason.getReason(), e(e4).getCategory(), 1L);
            }
        } catch (Throwable th) {
            this.f83074b.getLogger().a(SentryLevel.ERROR, th, "Unable to record lost envelope item.", new Object[0]);
        }
    }

    @Override // io.sentry.clientreport.f
    @m8.g
    public l3 d(@m8.g l3 l3Var) {
        b g4 = g();
        if (g4 == null) {
            return l3Var;
        }
        try {
            this.f83074b.getLogger().c(SentryLevel.DEBUG, "Attaching client report to envelope.", new Object[0]);
            ArrayList arrayList = new ArrayList();
            for (f4 f4Var : l3Var.e()) {
                arrayList.add(f4Var);
            }
            arrayList.add(f4.u(this.f83074b.getSerializer(), g4));
            return new l3(l3Var.d(), arrayList);
        } catch (Throwable th) {
            this.f83074b.getLogger().a(SentryLevel.ERROR, th, "Unable to attach client report to envelope.", new Object[0]);
            return l3Var;
        }
    }

    @m8.h
    b g() {
        Date c10 = k.c();
        List<e> b10 = this.f83073a.b();
        if (b10.isEmpty()) {
            return null;
        }
        return new b(c10, b10);
    }
}
