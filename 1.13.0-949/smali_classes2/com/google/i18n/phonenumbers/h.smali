.class public final Lcom/google/i18n/phonenumbers/h;
.super Ljava/lang/Object;
.source "PhoneNumberMatch.java"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_1

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 2
    iput p1, p0, Lcom/google/i18n/phonenumbers/h;->a:I

    .line 3
    iput-object p2, p0, Lcom/google/i18n/phonenumbers/h;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/i18n/phonenumbers/h;->c:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Start index must be >= 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()I
    .locals 2

    iget v0, p0, Lcom/google/i18n/phonenumbers/h;->a:I

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/h;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public b()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h;->c:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/i18n/phonenumbers/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/i18n/phonenumbers/h;->a:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/i18n/phonenumbers/h;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/i18n/phonenumbers/h;

    .line 3
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/h;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/i18n/phonenumbers/h;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/i18n/phonenumbers/h;->a:I

    iget v3, p1, Lcom/google/i18n/phonenumbers/h;->a:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/h;->c:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    iget-object p1, p1, Lcom/google/i18n/phonenumbers/h;->c:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 4
    invoke-virtual {v1, p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/i18n/phonenumbers/h;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/h;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/h;->c:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneNumberMatch ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/h;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/h;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
