.class Lcom/hcaptcha/sdk/j$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hcaptcha/sdk/j;->onError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/hcaptcha/sdk/HCaptchaError;

.field public final synthetic b:Lcom/hcaptcha/sdk/j;


# direct methods
.method public constructor <init>(Lcom/hcaptcha/sdk/j;Lcom/hcaptcha/sdk/HCaptchaError;)V
    .locals 0

    iput-object p1, p0, Lcom/hcaptcha/sdk/j$b;->b:Lcom/hcaptcha/sdk/j;

    iput-object p2, p0, Lcom/hcaptcha/sdk/j$b;->a:Lcom/hcaptcha/sdk/HCaptchaError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/hcaptcha/sdk/j$b;->b:Lcom/hcaptcha/sdk/j;

    invoke-static {v0}, Lcom/hcaptcha/sdk/j;->a(Lcom/hcaptcha/sdk/j;)Lcom/hcaptcha/sdk/p;

    move-result-object v0

    new-instance v1, Lcom/hcaptcha/sdk/HCaptchaException;

    iget-object v2, p0, Lcom/hcaptcha/sdk/j$b;->a:Lcom/hcaptcha/sdk/HCaptchaError;

    invoke-direct {v1, v2}, Lcom/hcaptcha/sdk/HCaptchaException;-><init>(Lcom/hcaptcha/sdk/HCaptchaError;)V

    invoke-interface {v0, v1}, Lcom/hcaptcha/sdk/tasks/a;->J(Lcom/hcaptcha/sdk/HCaptchaException;)V

    return-void
.end method
