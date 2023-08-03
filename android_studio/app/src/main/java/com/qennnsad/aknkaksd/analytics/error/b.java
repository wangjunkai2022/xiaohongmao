package com.qennnsad.aknkaksd.analytics.error;

import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import m8.g;

/* compiled from: ErrorReporter.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\bf\u0018\u0000 \b2\u00020\u0001:\u0001\bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H&J\b\u0010\t\u001a\u00020\u0004H&¨\u0006\n"}, d2 = {"Lcom/qennnsad/aknkaksd/analytics/error/b;", "", "", "e", "", "b", "", "id", "a", "c", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public interface b {
    @g

    /* renamed from: a  reason: collision with root package name */
    public static final a f47679a = a.f47680a;

    /* compiled from: ErrorReporter.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\u00028FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\t"}, d2 = {"Lcom/qennnsad/aknkaksd/analytics/error/b$a;", "", "Lcom/qennnsad/aknkaksd/analytics/error/b;", "a", "()Lcom/qennnsad/aknkaksd/analytics/error/b;", "getCurrentReporter$annotations", "()V", "currentReporter", "<init>", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ a f47680a = new a();

        private a() {
        }

        @JvmStatic
        public static /* synthetic */ void b() {
        }

        @g
        public final b a() {
            return d.f47682b;
        }
    }

    void a(@g String str);

    void b(@g Throwable th);

    void c();
}
