.class public final Lio/sentry/android/okhttp/c;
.super Ljava/lang/Object;
.source "SentryOkHttpInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/okhttp/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSentryOkHttpInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SentryOkHttpInterceptor.kt\nio/sentry/android/okhttp/SentryOkHttpInterceptor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,258:1\n1#2:259\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u00002\u00020\u0001:\u0001\u000fBG\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u001c\u0012\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u001f\u0012\u0008\u0008\u0002\u0010#\u001a\u00020\u0012\u0012\u000e\u0008\u0002\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020%0$\u0012\u000e\u0008\u0002\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00170$\u00a2\u0006\u0004\u0008)\u0010*B\t\u0008\u0016\u00a2\u0006\u0004\u0008)\u0010+B\u0011\u0008\u0016\u0012\u0006\u0010\u001e\u001a\u00020\u001c\u00a2\u0006\u0004\u0008)\u0010,B\u0011\u0008\u0016\u0012\u0006\u0010!\u001a\u00020\u001f\u00a2\u0006\u0004\u0008)\u0010-J$\u0010\t\u001a\u00020\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002J)\u0010\r\u001a\u00020\u0008*\u0004\u0018\u00010\n2\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u00080\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0018\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010H\u0002J\u001e\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0002J\u0010\u0010\u001b\u001a\u00020\u00062\u0006\u0010\u001a\u001a\u00020\u0019H\u0016R\u0014\u0010\u001e\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u001dR\u0016\u0010!\u001a\u0004\u0018\u00010\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010 R\u0014\u0010#\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\"R\u001a\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020%0$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010&R\u001a\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00170$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010&\u00a8\u0006."
    }
    d2 = {
        "Lio/sentry/android/okhttp/c;",
        "Lokhttp3/Interceptor;",
        "Lio/sentry/v0;",
        "span",
        "Lokhttp3/Request;",
        "request",
        "Lokhttp3/Response;",
        "response",
        "",
        "c",
        "",
        "Lkotlin/Function1;",
        "fn",
        "e",
        "(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V",
        "a",
        "",
        "statusCode",
        "",
        "b",
        "Lokhttp3/Headers;",
        "requestHeaders",
        "",
        "",
        "d",
        "Lokhttp3/Interceptor$Chain;",
        "chain",
        "intercept",
        "Lio/sentry/n0;",
        "Lio/sentry/n0;",
        "hub",
        "Lio/sentry/android/okhttp/c$a;",
        "Lio/sentry/android/okhttp/c$a;",
        "beforeSpan",
        "Z",
        "captureFailedRequests",
        "",
        "Lio/sentry/f0;",
        "Ljava/util/List;",
        "failedRequestStatusCodes",
        "failedRequestTargets",
        "<init>",
        "(Lio/sentry/n0;Lio/sentry/android/okhttp/c$a;ZLjava/util/List;Ljava/util/List;)V",
        "()V",
        "(Lio/sentry/n0;)V",
        "(Lio/sentry/android/okhttp/c$a;)V",
        "sentry-android-okhttp_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x3
    }
.end annotation


# instance fields
.field private final a:Lio/sentry/n0;

.field private final b:Lio/sentry/android/okhttp/c$a;

.field private final c:Z

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/f0;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-static {}, Lio/sentry/i0;->d0()Lio/sentry/i0;

    move-result-object v0

    const-string v1, "HubAdapter.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lio/sentry/android/okhttp/c;-><init>(Lio/sentry/n0;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/android/okhttp/c$a;)V
    .locals 9
    .param p1    # Lio/sentry/android/okhttp/c$a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "beforeSpan"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lio/sentry/i0;->d0()Lio/sentry/i0;

    move-result-object v2

    const-string v0, "HubAdapter.getInstance()"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lio/sentry/android/okhttp/c;-><init>(Lio/sentry/n0;Lio/sentry/android/okhttp/c$a;ZLjava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/n0;)V
    .locals 9
    .param p1    # Lio/sentry/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "hub"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 7
    invoke-direct/range {v1 .. v8}, Lio/sentry/android/okhttp/c;-><init>(Lio/sentry/n0;Lio/sentry/android/okhttp/c$a;ZLjava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lio/sentry/n0;Lio/sentry/android/okhttp/c$a;ZLjava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1    # Lio/sentry/n0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/android/okhttp/c$a;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/n0;",
            "Lio/sentry/android/okhttp/c$a;",
            "Z",
            "Ljava/util/List<",
            "Lio/sentry/f0;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "hub"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failedRequestStatusCodes"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failedRequestTargets"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/okhttp/c;->a:Lio/sentry/n0;

    iput-object p2, p0, Lio/sentry/android/okhttp/c;->b:Lio/sentry/android/okhttp/c$a;

    iput-boolean p3, p0, Lio/sentry/android/okhttp/c;->c:Z

    iput-object p4, p0, Lio/sentry/android/okhttp/c;->d:Ljava/util/List;

    iput-object p5, p0, Lio/sentry/android/okhttp/c;->e:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lio/sentry/n0;Lio/sentry/android/okhttp/c$a;ZLjava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 2
    invoke-static {}, Lio/sentry/i0;->d0()Lio/sentry/i0;

    move-result-object p1

    const-string p7, "HubAdapter.getInstance()"

    invoke-static {p1, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    :cond_1
    move-object v2, p2

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    const/4 p3, 0x0

    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    move v3, p3

    :goto_0
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    .line 3
    new-instance p1, Lio/sentry/f0;

    const/16 p2, 0x1f4

    const/16 p3, 0x257

    invoke-direct {p1, p2, p3}, Lio/sentry/f0;-><init>(II)V

    .line 4
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    :cond_3
    move-object v4, p4

    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    const-string p1, ".*"

    .line 5
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p5

    :cond_4
    move-object v5, p5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/sentry/android/okhttp/c;-><init>(Lio/sentry/n0;Lio/sentry/android/okhttp/c$a;ZLjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private final a(Lokhttp3/Request;Lokhttp3/Response;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lio/sentry/android/okhttp/c;->c:Z

    if-eqz v1, :cond_c

    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-direct {v0, v1}, Lio/sentry/android/okhttp/c;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->query()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_3

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x3f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v4, ""

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    move-object v10, v2

    .line 6
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->fragment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 7
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    const/4 v8, 0x1

    :cond_5
    if-nez v8, :cond_6

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x23

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x4

    const/4 v15, 0x0

    const-string v12, ""

    invoke-static/range {v10 .. v15}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 9
    :cond_6
    iget-object v3, v0, Lio/sentry/android/okhttp/c;->e:Ljava/util/List;

    invoke-static {v3, v10}, Lio/sentry/util/o;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    return-void

    .line 10
    :cond_7
    new-instance v3, Lio/sentry/protocol/f;

    invoke-direct {v3}, Lio/sentry/protocol/f;-><init>()V

    const-string v4, "SentryOkHttpInterceptor"

    .line 11
    invoke-virtual {v3, v4}, Lio/sentry/protocol/f;->v(Ljava/lang/String;)V

    .line 12
    new-instance v4, Lio/sentry/exception/SentryHttpClientException;

    .line 13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP Client Error with status code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->code()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 14
    invoke-direct {v4, v5}, Lio/sentry/exception/SentryHttpClientException;-><init>(Ljava/lang/String;)V

    .line 15
    new-instance v5, Lio/sentry/exception/ExceptionMechanismException;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-direct {v5, v3, v4, v6, v9}, Lio/sentry/exception/ExceptionMechanismException;-><init>(Lio/sentry/protocol/f;Ljava/lang/Throwable;Ljava/lang/Thread;Z)V

    .line 16
    new-instance v3, Lio/sentry/h4;

    invoke-direct {v3, v5}, Lio/sentry/h4;-><init>(Ljava/lang/Throwable;)V

    .line 17
    new-instance v4, Lio/sentry/b0;

    invoke-direct {v4}, Lio/sentry/b0;-><init>()V

    const-string v5, "okHttp:request"

    move-object/from16 v6, p1

    .line 18
    invoke-virtual {v4, v5, v6}, Lio/sentry/b0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v5, "okHttp:response"

    move-object/from16 v7, p2

    .line 19
    invoke-virtual {v4, v5, v7}, Lio/sentry/b0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    new-instance v5, Lio/sentry/protocol/i;

    invoke-direct {v5}, Lio/sentry/protocol/i;-><init>()V

    .line 21
    invoke-virtual {v5, v10}, Lio/sentry/protocol/i;->D(Ljava/lang/String;)V

    .line 22
    iget-object v8, v0, Lio/sentry/android/okhttp/c;->a:Lio/sentry/n0;

    invoke-interface {v8}, Lio/sentry/n0;->A()Lio/sentry/SentryOptions;

    move-result-object v8

    const-string v9, "hub.options"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lio/sentry/SentryOptions;->isSendDefaultPii()Z

    move-result v8

    const/4 v10, 0x0

    if-eqz v8, :cond_8

    invoke-virtual/range {p1 .. p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v8

    const-string v11, "Cookie"

    invoke-virtual {v8, v11}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_8
    move-object v8, v10

    :goto_2
    invoke-virtual {v5, v8}, Lio/sentry/protocol/i;->v(Ljava/lang/String;)V

    .line 23
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lio/sentry/protocol/i;->A(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v5, v1}, Lio/sentry/protocol/i;->C(Ljava/lang/String;)V

    .line 25
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/sentry/android/okhttp/c;->d(Lokhttp3/Headers;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v5, v1}, Lio/sentry/protocol/i;->z(Ljava/util/Map;)V

    .line 26
    invoke-virtual {v5, v2}, Lio/sentry/protocol/i;->y(Ljava/lang/String;)V

    .line 27
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_3

    :cond_9
    move-object v1, v10

    :goto_3
    new-instance v2, Lio/sentry/android/okhttp/c$b;

    invoke-direct {v2, v5}, Lio/sentry/android/okhttp/c$b;-><init>(Lio/sentry/protocol/i;)V

    invoke-direct {v0, v1, v2}, Lio/sentry/android/okhttp/c;->e(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V

    .line 28
    new-instance v1, Lio/sentry/protocol/j;

    invoke-direct {v1}, Lio/sentry/protocol/j;-><init>()V

    .line 29
    iget-object v2, v0, Lio/sentry/android/okhttp/c;->a:Lio/sentry/n0;

    invoke-interface {v2}, Lio/sentry/n0;->A()Lio/sentry/SentryOptions;

    move-result-object v2

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->isSendDefaultPii()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    const-string v6, "Set-Cookie"

    invoke-virtual {v2, v6}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_a
    move-object v2, v10

    :goto_4
    invoke-virtual {v1, v2}, Lio/sentry/protocol/j;->j(Ljava/lang/String;)V

    .line 30
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v2

    invoke-direct {v0, v2}, Lio/sentry/android/okhttp/c;->d(Lokhttp3/Headers;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/sentry/protocol/j;->k(Ljava/util/Map;)V

    .line 31
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/sentry/protocol/j;->l(Ljava/lang/Integer;)V

    .line 32
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    :cond_b
    new-instance v2, Lio/sentry/android/okhttp/c$c;

    invoke-direct {v2, v1}, Lio/sentry/android/okhttp/c$c;-><init>(Lio/sentry/protocol/j;)V

    invoke-direct {v0, v10, v2}, Lio/sentry/android/okhttp/c;->e(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V

    .line 33
    invoke-virtual {v3, v5}, Lio/sentry/e3;->g0(Lio/sentry/protocol/i;)V

    .line 34
    invoke-virtual {v3}, Lio/sentry/e3;->E()Lio/sentry/protocol/Contexts;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/sentry/protocol/Contexts;->setResponse(Lio/sentry/protocol/j;)V

    .line 35
    iget-object v1, v0, Lio/sentry/android/okhttp/c;->a:Lio/sentry/n0;

    invoke-interface {v1, v3, v4}, Lio/sentry/n0;->j(Lio/sentry/h4;Lio/sentry/b0;)Lio/sentry/protocol/n;

    :cond_c
    :goto_5
    return-void
.end method

.method private final b(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/sentry/android/okhttp/c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/f0;

    .line 2
    invoke-virtual {v1, p1}, Lio/sentry/f0;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final c(Lio/sentry/v0;Lokhttp3/Request;Lokhttp3/Response;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lio/sentry/android/okhttp/c;->b:Lio/sentry/android/okhttp/c$a;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0, p1, p2, p3}, Lio/sentry/android/okhttp/c$a;->a(Lio/sentry/v0;Lokhttp3/Request;Lokhttp3/Response;)Lio/sentry/v0;

    move-result-object p2

    if-nez p2, :cond_0

    .line 3
    invoke-interface {p1}, Lio/sentry/v0;->E()Lio/sentry/f5;

    move-result-object p1

    const-string p2, "span.spanContext"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Lio/sentry/f5;->m(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Lio/sentry/v0;->h()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p1}, Lio/sentry/v0;->h()V

    :cond_2
    :goto_0
    return-void
.end method

.method private final d(Lokhttp3/Headers;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/sentry/android/okhttp/c;->a:Lio/sentry/n0;

    invoke-interface {v0}, Lio/sentry/n0;->A()Lio/sentry/SentryOptions;

    move-result-object v0

    const-string v1, "hub.options"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isSendDefaultPii()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    .line 4
    invoke-virtual {p1, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v3}, Lio/sentry/util/i;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private final e(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Long;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 14
    .param p1    # Lokhttp3/Interceptor$Chain;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "baggage"

    const-string v1, "it.value"

    const-string v2, "it.name"

    const-string v3, "it"

    const-string v4, "okHttp:response"

    const-string v5, "okHttp:request"

    const-string v6, "Breadcrumb.http(request.\u2026(), request.method, code)"

    const-string v7, "chain"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v7

    .line 2
    invoke-virtual {v7}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3
    invoke-virtual {v7}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v9

    .line 4
    iget-object v10, p0, Lio/sentry/android/okhttp/c;->a:Lio/sentry/n0;

    invoke-interface {v10}, Lio/sentry/n0;->u()Lio/sentry/v0;

    move-result-object v10

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x20

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "http.client"

    invoke-interface {v10, v9, v8}, Lio/sentry/v0;->H(Ljava/lang/String;Ljava/lang/String;)Lio/sentry/v0;

    move-result-object v8

    goto :goto_0

    :cond_0
    move-object v8, v11

    .line 5
    :goto_0
    :try_start_0
    invoke-virtual {v7}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v9

    if-eqz v8, :cond_1

    .line 6
    invoke-interface {v8}, Lio/sentry/v0;->e()Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lio/sentry/android/okhttp/c;->a:Lio/sentry/n0;

    invoke-interface {v10}, Lio/sentry/n0;->A()Lio/sentry/SentryOptions;

    move-result-object v10

    const-string v12, "hub.options"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lio/sentry/SentryOptions;->getTracePropagationTargets()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v7}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v12

    invoke-virtual {v12}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lio/sentry/util/o;->a(Ljava/util/List;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 7
    invoke-interface {v8}, Lio/sentry/v0;->d()Lio/sentry/v4;

    move-result-object v10

    .line 8
    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lio/sentry/v4;->a()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lio/sentry/v4;->d()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v12, v10}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 9
    invoke-virtual {v7, v0}, Lokhttp3/Request;->headers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v8, v10}, Lio/sentry/v0;->v(Ljava/util/List;)Lio/sentry/e;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 10
    invoke-virtual {v9, v0}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 11
    invoke-static {v10, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lio/sentry/e;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Lio/sentry/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v0, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 12
    :cond_1
    invoke-virtual {v9}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v7

    .line 13
    invoke-interface {p1, v7}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 14
    :try_start_1
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v8, :cond_2

    .line 15
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lio/sentry/SpanStatus;->fromHttpStatusCode(I)Lio/sentry/SpanStatus;

    move-result-object v1

    invoke-interface {v8, v1}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v13, v0

    move-object v0, p1

    move-object p1, v1

    move-object v1, v13

    goto/16 :goto_5

    :catch_0
    move-exception v1

    move-object v13, v0

    move-object v0, p1

    move-object p1, v1

    move-object v1, v13

    goto/16 :goto_3

    .line 16
    :cond_2
    :goto_1
    invoke-direct {p0, v7, p1}, Lio/sentry/android/okhttp/c;->a(Lokhttp3/Request;Lokhttp3/Response;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    invoke-direct {p0, v8, v7, p1}, Lio/sentry/android/okhttp/c;->c(Lio/sentry/v0;Lokhttp3/Request;Lokhttp3/Response;)V

    .line 18
    invoke-virtual {v7}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lio/sentry/f;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lio/sentry/f;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v7}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v11

    :goto_2
    new-instance v2, Lio/sentry/android/okhttp/c$h;

    invoke-direct {v2, v0}, Lio/sentry/android/okhttp/c$h;-><init>(Lio/sentry/f;)V

    invoke-direct {p0, v1, v2}, Lio/sentry/android/okhttp/c;->e(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V

    .line 20
    new-instance v1, Lio/sentry/b0;

    invoke-direct {v1}, Lio/sentry/b0;-><init>()V

    .line 21
    invoke-virtual {v1, v5, v7}, Lio/sentry/b0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    :cond_4
    new-instance v2, Lio/sentry/android/okhttp/c$d;

    invoke-direct {v2, p0, v0, v1}, Lio/sentry/android/okhttp/c$d;-><init>(Lio/sentry/android/okhttp/c;Lio/sentry/f;Lio/sentry/b0;)V

    invoke-direct {p0, v11, v2}, Lio/sentry/android/okhttp/c;->e(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V

    .line 23
    invoke-virtual {v1, v4, p1}, Lio/sentry/b0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    iget-object v2, p0, Lio/sentry/android/okhttp/c;->a:Lio/sentry/n0;

    invoke-interface {v2, v0, v1}, Lio/sentry/n0;->s(Lio/sentry/f;Lio/sentry/b0;)V

    return-object p1

    :catchall_1
    move-exception v0

    move-object v1, v11

    move-object v13, v0

    move-object v0, p1

    move-object p1, v13

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v1, v11

    move-object v13, v0

    move-object v0, p1

    move-object p1, v13

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v0, v11

    move-object v1, v0

    goto :goto_5

    :catch_2
    move-exception p1

    move-object v0, v11

    move-object v1, v0

    :goto_3
    if-eqz v8, :cond_5

    .line 25
    :try_start_3
    invoke-interface {v8, p1}, Lio/sentry/v0;->s(Ljava/lang/Throwable;)V

    .line 26
    sget-object v2, Lio/sentry/SpanStatus;->INTERNAL_ERROR:Lio/sentry/SpanStatus;

    invoke-interface {v8, v2}, Lio/sentry/v0;->c(Lio/sentry/SpanStatus;)V

    goto :goto_4

    :catchall_3
    move-exception p1

    goto :goto_5

    .line 27
    :cond_5
    :goto_4
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 28
    :goto_5
    invoke-direct {p0, v8, v7, v0}, Lio/sentry/android/okhttp/c;->c(Lio/sentry/v0;Lokhttp3/Request;Lokhttp3/Response;)V

    .line 29
    invoke-virtual {v7}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lio/sentry/f;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Lio/sentry/f;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v7}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_6

    :cond_6
    move-object v2, v11

    :goto_6
    new-instance v3, Lio/sentry/android/okhttp/c$h;

    invoke-direct {v3, v1}, Lio/sentry/android/okhttp/c$h;-><init>(Lio/sentry/f;)V

    invoke-direct {p0, v2, v3}, Lio/sentry/android/okhttp/c;->e(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V

    .line 31
    new-instance v2, Lio/sentry/b0;

    invoke-direct {v2}, Lio/sentry/b0;-><init>()V

    .line 32
    invoke-virtual {v2, v5, v7}, Lio/sentry/b0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_8

    .line 33
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    :cond_7
    new-instance v3, Lio/sentry/android/okhttp/c$g;

    invoke-direct {v3, p0, v1, v2}, Lio/sentry/android/okhttp/c$g;-><init>(Lio/sentry/android/okhttp/c;Lio/sentry/f;Lio/sentry/b0;)V

    invoke-direct {p0, v11, v3}, Lio/sentry/android/okhttp/c;->e(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V

    .line 34
    invoke-virtual {v2, v4, v0}, Lio/sentry/b0;->m(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    :cond_8
    iget-object v0, p0, Lio/sentry/android/okhttp/c;->a:Lio/sentry/n0;

    invoke-interface {v0, v1, v2}, Lio/sentry/n0;->s(Lio/sentry/f;Lio/sentry/b0;)V

    throw p1
.end method
