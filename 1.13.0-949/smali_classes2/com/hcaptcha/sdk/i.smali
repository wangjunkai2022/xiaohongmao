.class Lcom/hcaptcha/sdk/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hcaptcha/sdk/i$a;
    }
.end annotation


# instance fields
.field private a:Lcom/hcaptcha/sdk/IHCaptchaHtmlProvider;


# direct methods
.method public constructor <init>(Lcom/hcaptcha/sdk/IHCaptchaHtmlProvider;)V
    .locals 0
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "generated code"
    .end annotation

    .annotation build Llombok/Generated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hcaptcha/sdk/i;->a:Lcom/hcaptcha/sdk/IHCaptchaHtmlProvider;

    return-void
.end method

.method private static a()Lcom/hcaptcha/sdk/IHCaptchaHtmlProvider;
    .locals 1
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "generated code"
    .end annotation

    .annotation build Llombok/Generated;
    .end annotation

    new-instance v0, Lcom/hcaptcha/sdk/h;

    invoke-direct {v0}, Lcom/hcaptcha/sdk/h;-><init>()V

    return-object v0
.end method

.method public static synthetic b()Lcom/hcaptcha/sdk/IHCaptchaHtmlProvider;
    .locals 1

    invoke-static {}, Lcom/hcaptcha/sdk/i;->a()Lcom/hcaptcha/sdk/IHCaptchaHtmlProvider;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lcom/hcaptcha/sdk/i$a;
    .locals 1
    .annotation build Ledu/umd/cs/findbugs/annotations/NonNull;
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "generated code"
    .end annotation

    .annotation build Llombok/Generated;
    .end annotation

    new-instance v0, Lcom/hcaptcha/sdk/i$a;

    invoke-direct {v0}, Lcom/hcaptcha/sdk/i$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "generated code"
    .end annotation

    .annotation build Llombok/Generated;
    .end annotation

    instance-of p1, p1, Lcom/hcaptcha/sdk/i;

    return p1
.end method

.method public e()Lcom/hcaptcha/sdk/IHCaptchaHtmlProvider;
    .locals 1
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "generated code"
    .end annotation

    .annotation build Llombok/Generated;
    .end annotation

    iget-object v0, p0, Lcom/hcaptcha/sdk/i;->a:Lcom/hcaptcha/sdk/IHCaptchaHtmlProvider;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Ledu/umd/cs/findbugs/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "generated code"
    .end annotation

    .annotation build Llombok/Generated;
    .end annotation

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/hcaptcha/sdk/i;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/hcaptcha/sdk/i;

    invoke-virtual {p1, p0}, Lcom/hcaptcha/sdk/i;->d(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/i;->e()Lcom/hcaptcha/sdk/IHCaptchaHtmlProvider;

    move-result-object v1

    invoke-virtual {p1}, Lcom/hcaptcha/sdk/i;->e()Lcom/hcaptcha/sdk/IHCaptchaHtmlProvider;

    move-result-object p1

    if-nez v1, :cond_3

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    return v2

    :cond_4
    return v0
.end method

.method public h(Lcom/hcaptcha/sdk/IHCaptchaHtmlProvider;)V
    .locals 0
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "generated code"
    .end annotation

    .annotation build Llombok/Generated;
    .end annotation

    iput-object p1, p0, Lcom/hcaptcha/sdk/i;->a:Lcom/hcaptcha/sdk/IHCaptchaHtmlProvider;

    return-void
.end method

.method public hashCode()I
    .locals 1
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "generated code"
    .end annotation

    .annotation build Llombok/Generated;
    .end annotation

    invoke-virtual {p0}, Lcom/hcaptcha/sdk/i;->e()Lcom/hcaptcha/sdk/IHCaptchaHtmlProvider;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    return v0
.end method

.method public i()Lcom/hcaptcha/sdk/i$a;
    .locals 2
    .annotation build Ledu/umd/cs/findbugs/annotations/NonNull;
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "generated code"
    .end annotation

    .annotation build Llombok/Generated;
    .end annotation

    new-instance v0, Lcom/hcaptcha/sdk/i$a;

    invoke-direct {v0}, Lcom/hcaptcha/sdk/i$a;-><init>()V

    iget-object v1, p0, Lcom/hcaptcha/sdk/i;->a:Lcom/hcaptcha/sdk/IHCaptchaHtmlProvider;

    invoke-virtual {v0, v1}, Lcom/hcaptcha/sdk/i$a;->b(Lcom/hcaptcha/sdk/IHCaptchaHtmlProvider;)Lcom/hcaptcha/sdk/i$a;

    move-result-object v0

    return-object v0
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

    const-string v1, "HCaptchaInternalConfig(htmlProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hcaptcha/sdk/i;->e()Lcom/hcaptcha/sdk/IHCaptchaHtmlProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
