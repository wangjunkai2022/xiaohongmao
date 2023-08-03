.class final Lcom/alipay/android/phone/mrpc/core/f$a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/phone/mrpc/core/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mrpc/core/f;


# direct methods
.method private constructor <init>(Lcom/alipay/android/phone/mrpc/core/f;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/f$a;->a:Lcom/alipay/android/phone/mrpc/core/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/android/phone/mrpc/core/f;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mrpc/core/f$a;-><init>(Lcom/alipay/android/phone/mrpc/core/f;)V

    return-void
.end method


# virtual methods
.method public final process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 1

    iget-object p2, p0, Lcom/alipay/android/phone/mrpc/core/f$a;->a:Lcom/alipay/android/phone/mrpc/core/f;

    invoke-static {p2}, Lcom/alipay/android/phone/mrpc/core/f;->a(Lcom/alipay/android/phone/mrpc/core/f;)Lcom/alipay/android/phone/mrpc/core/f$b;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/alipay/android/phone/mrpc/core/f$b;->b(Lcom/alipay/android/phone/mrpc/core/f$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-static {p1}, Lcom/alipay/android/phone/mrpc/core/f;->d(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/alipay/android/phone/mrpc/core/f$b;->a(Lcom/alipay/android/phone/mrpc/core/f$b;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
