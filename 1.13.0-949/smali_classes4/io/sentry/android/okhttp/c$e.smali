.class final Lio/sentry/android/okhttp/c$e;
.super Lkotlin/jvm/internal/Lambda;
.source "SentryOkHttpInterceptor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/okhttp/c;->intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Long;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "",
        "responseBodySize",
        "",
        "a",
        "(J)V",
        "io/sentry/android/okhttp/SentryOkHttpInterceptor$intercept$5$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x3
    }
.end annotation


# instance fields
.field final synthetic a:Lio/sentry/android/okhttp/c;

.field final synthetic b:Lio/sentry/f;

.field final synthetic c:Lio/sentry/b0;


# direct methods
.method constructor <init>(Lio/sentry/android/okhttp/c;Lio/sentry/f;Lio/sentry/b0;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/android/okhttp/c$e;->a:Lio/sentry/android/okhttp/c;

    iput-object p2, p0, Lio/sentry/android/okhttp/c$e;->b:Lio/sentry/f;

    iput-object p3, p0, Lio/sentry/android/okhttp/c$e;->c:Lio/sentry/b0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    iget-object v0, p0, Lio/sentry/android/okhttp/c$e;->b:Lio/sentry/f;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "response_body_size"

    invoke-virtual {v0, p2, p1}, Lio/sentry/f;->v(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/sentry/android/okhttp/c$e;->a(J)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
