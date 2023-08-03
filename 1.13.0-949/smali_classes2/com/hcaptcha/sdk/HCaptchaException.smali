.class public Lcom/hcaptcha/sdk/HCaptchaException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hcaptcha/sdk/HCaptchaError;


# direct methods
.method public constructor <init>(Lcom/hcaptcha/sdk/HCaptchaError;)V
    .locals 0
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "generated code"
    .end annotation

    .annotation build Llombok/Generated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/hcaptcha/sdk/HCaptchaException;->a:Lcom/hcaptcha/sdk/HCaptchaError;

    return-void
.end method


# virtual methods
.method public canEqual(Ljava/lang/Object;)Z
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

    instance-of p1, p1, Lcom/hcaptcha/sdk/HCaptchaException;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
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
    instance-of v1, p1, Lcom/hcaptcha/sdk/HCaptchaException;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/hcaptcha/sdk/HCaptchaException;

    invoke-virtual {v1, p0}, Lcom/hcaptcha/sdk/HCaptchaException;->canEqual(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaException;->getHCaptchaError()Lcom/hcaptcha/sdk/HCaptchaError;

    move-result-object p1

    invoke-virtual {v1}, Lcom/hcaptcha/sdk/HCaptchaException;->getHCaptchaError()Lcom/hcaptcha/sdk/HCaptchaError;

    move-result-object v1

    if-nez p1, :cond_4

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :goto_0
    return v2

    :cond_5
    return v0
.end method

.method public getHCaptchaError()Lcom/hcaptcha/sdk/HCaptchaError;
    .locals 1

    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptchaException;->a:Lcom/hcaptcha/sdk/HCaptchaError;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptchaException;->a:Lcom/hcaptcha/sdk/HCaptchaError;

    invoke-virtual {v0}, Lcom/hcaptcha/sdk/HCaptchaError;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget-object v0, p0, Lcom/hcaptcha/sdk/HCaptchaException;->a:Lcom/hcaptcha/sdk/HCaptchaError;

    invoke-virtual {v0}, Lcom/hcaptcha/sdk/HCaptchaError;->getErrorId()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "generated code"
    .end annotation

    .annotation build Llombok/Generated;
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaException;->getHCaptchaError()Lcom/hcaptcha/sdk/HCaptchaError;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_0

    const/16 v1, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
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

    const-string v1, "HCaptchaException(hCaptchaError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hcaptcha/sdk/HCaptchaException;->getHCaptchaError()Lcom/hcaptcha/sdk/HCaptchaError;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
