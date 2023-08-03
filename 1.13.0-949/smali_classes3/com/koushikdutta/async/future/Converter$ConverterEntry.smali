.class Lcom/koushikdutta/async/future/Converter$ConverterEntry;
.super Ljava/lang/Object;
.source "Converter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/future/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConverterEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lcom/koushikdutta/async/future/Converter$MimedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/future/Converter$MimedType<",
            "TF;>;"
        }
    .end annotation
.end field

.field b:Lcom/koushikdutta/async/future/Converter$MimedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/future/Converter$MimedType<",
            "TT;>;"
        }
    .end annotation
.end field

.field c:I

.field d:Lcom/koushikdutta/async/future/TypeConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/future/TypeConverter<",
            "TT;TF;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;ILcom/koushikdutta/async/future/TypeConverter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TF;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "I",
            "Lcom/koushikdutta/async/future/TypeConverter<",
            "TT;TF;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/koushikdutta/async/future/Converter$MimedType;

    invoke-direct {v0, p1, p2}, Lcom/koushikdutta/async/future/Converter$MimedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/koushikdutta/async/future/Converter$ConverterEntry;->a:Lcom/koushikdutta/async/future/Converter$MimedType;

    .line 3
    new-instance p1, Lcom/koushikdutta/async/future/Converter$MimedType;

    invoke-direct {p1, p3, p4}, Lcom/koushikdutta/async/future/Converter$MimedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/koushikdutta/async/future/Converter$ConverterEntry;->b:Lcom/koushikdutta/async/future/Converter$MimedType;

    .line 4
    iput p5, p0, Lcom/koushikdutta/async/future/Converter$ConverterEntry;->c:I

    .line 5
    iput-object p6, p0, Lcom/koushikdutta/async/future/Converter$ConverterEntry;->d:Lcom/koushikdutta/async/future/TypeConverter;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    check-cast p1, Lcom/koushikdutta/async/future/Converter$ConverterEntry;

    .line 2
    iget-object v0, p0, Lcom/koushikdutta/async/future/Converter$ConverterEntry;->a:Lcom/koushikdutta/async/future/Converter$MimedType;

    iget-object v1, p1, Lcom/koushikdutta/async/future/Converter$ConverterEntry;->a:Lcom/koushikdutta/async/future/Converter$MimedType;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/future/Converter$MimedType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/future/Converter$ConverterEntry;->b:Lcom/koushikdutta/async/future/Converter$MimedType;

    iget-object p1, p1, Lcom/koushikdutta/async/future/Converter$ConverterEntry;->b:Lcom/koushikdutta/async/future/Converter$MimedType;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/future/Converter$MimedType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/koushikdutta/async/future/Converter$ConverterEntry;->a:Lcom/koushikdutta/async/future/Converter$MimedType;

    invoke-virtual {v0}, Lcom/koushikdutta/async/future/Converter$MimedType;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/koushikdutta/async/future/Converter$ConverterEntry;->b:Lcom/koushikdutta/async/future/Converter$MimedType;

    invoke-virtual {v1}, Lcom/koushikdutta/async/future/Converter$MimedType;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
