.class public Lcom/hcaptcha/sdk/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hcaptcha/sdk/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    justification = "generated code"
.end annotation

.annotation build Llombok/Generated;
.end annotation


# instance fields
.field private a:Z
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "generated code"
    .end annotation

    .annotation build Llombok/Generated;
    .end annotation
.end field

.field private b:Lcom/hcaptcha/sdk/IHCaptchaHtmlProvider;
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "generated code"
    .end annotation

    .annotation build Llombok/Generated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "generated code"
    .end annotation

    .annotation build Llombok/Generated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/hcaptcha/sdk/i;
    .locals 2
    .annotation build Ledu/umd/cs/findbugs/annotations/NonNull;
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "generated code"
    .end annotation

    .annotation build Llombok/Generated;
    .end annotation

    iget-object v0, p0, Lcom/hcaptcha/sdk/i$a;->b:Lcom/hcaptcha/sdk/IHCaptchaHtmlProvider;

    iget-boolean v1, p0, Lcom/hcaptcha/sdk/i$a;->a:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/hcaptcha/sdk/i;->b()Lcom/hcaptcha/sdk/IHCaptchaHtmlProvider;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/hcaptcha/sdk/i;

    invoke-direct {v1, v0}, Lcom/hcaptcha/sdk/i;-><init>(Lcom/hcaptcha/sdk/IHCaptchaHtmlProvider;)V

    return-object v1
.end method

.method public b(Lcom/hcaptcha/sdk/IHCaptchaHtmlProvider;)Lcom/hcaptcha/sdk/i$a;
    .locals 0
    .annotation build Ledu/umd/cs/findbugs/annotations/NonNull;
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "generated code"
    .end annotation

    .annotation build Llombok/Generated;
    .end annotation

    iput-object p1, p0, Lcom/hcaptcha/sdk/i$a;->b:Lcom/hcaptcha/sdk/IHCaptchaHtmlProvider;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/hcaptcha/sdk/i$a;->a:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Ledu/umd/cs/findbugs/annotations/NonNull;
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "generated code"
    .end annotation

    .annotation build Llombok/Generated;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HCaptchaInternalConfig.HCaptchaInternalConfigBuilder(htmlProvider$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hcaptcha/sdk/i$a;->b:Lcom/hcaptcha/sdk/IHCaptchaHtmlProvider;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
