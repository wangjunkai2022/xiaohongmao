.class Lcom/hcaptcha/sdk/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final d:Ljava/lang/String; = "JSInterface"


# instance fields
.field private final a:Landroid/os/Handler;
    .annotation build Llombok/NonNull;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Lcom/hcaptcha/sdk/p;
    .annotation build Llombok/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/hcaptcha/sdk/HCaptchaConfig;Lcom/hcaptcha/sdk/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hcaptcha/sdk/j;->a:Landroid/os/Handler;

    iput-object p3, p0, Lcom/hcaptcha/sdk/j;->c:Lcom/hcaptcha/sdk/p;

    :try_start_0
    new-instance p1, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "JSInterface"

    const-string p2, "Cannot prepare config for passing to WebView. A fallback config will be used"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/hcaptcha/sdk/j;->b:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/hcaptcha/sdk/j;)Lcom/hcaptcha/sdk/p;
    .locals 0

    iget-object p0, p0, Lcom/hcaptcha/sdk/j;->c:Lcom/hcaptcha/sdk/p;

    return-object p0
.end method


# virtual methods
.method public getConfig()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/hcaptcha/sdk/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public onError(I)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "JSInterface.onError %d"

    invoke-static {v1, v0}, Lcom/hcaptcha/sdk/k;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/hcaptcha/sdk/HCaptchaError;->fromId(I)Lcom/hcaptcha/sdk/HCaptchaError;

    move-result-object p1

    iget-object v0, p0, Lcom/hcaptcha/sdk/j;->a:Landroid/os/Handler;

    new-instance v1, Lcom/hcaptcha/sdk/j$b;

    invoke-direct {v1, p0, p1}, Lcom/hcaptcha/sdk/j$b;-><init>(Lcom/hcaptcha/sdk/j;Lcom/hcaptcha/sdk/HCaptchaError;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLoaded()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "JSInterface.onLoaded"

    invoke-static {v0}, Lcom/hcaptcha/sdk/k;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hcaptcha/sdk/j;->a:Landroid/os/Handler;

    new-instance v1, Lcom/hcaptcha/sdk/j$c;

    invoke-direct {v1, p0}, Lcom/hcaptcha/sdk/j$c;-><init>(Lcom/hcaptcha/sdk/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onOpen()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "JSInterface.onOpen"

    invoke-static {v0}, Lcom/hcaptcha/sdk/k;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hcaptcha/sdk/j;->a:Landroid/os/Handler;

    new-instance v1, Lcom/hcaptcha/sdk/j$d;

    invoke-direct {v1, p0}, Lcom/hcaptcha/sdk/j$d;-><init>(Lcom/hcaptcha/sdk/j;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPass(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "JSInterface.onPass"

    invoke-static {v0}, Lcom/hcaptcha/sdk/k;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/hcaptcha/sdk/j;->a:Landroid/os/Handler;

    new-instance v1, Lcom/hcaptcha/sdk/j$a;

    invoke-direct {v1, p0, p1}, Lcom/hcaptcha/sdk/j$a;-><init>(Lcom/hcaptcha/sdk/j;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
