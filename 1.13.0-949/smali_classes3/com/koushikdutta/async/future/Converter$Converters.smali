.class Lcom/koushikdutta/async/future/Converter$Converters;
.super Lcom/koushikdutta/async/future/Converter$EnsureHashMap;
.source "Converter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/future/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Converters"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/koushikdutta/async/future/Converter$EnsureHashMap<",
        "Lcom/koushikdutta/async/future/Converter$MimedType<",
        "TF;>;",
        "Lcom/koushikdutta/async/future/Converter$ConverterTransformers<",
        "TF;TT;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/koushikdutta/async/future/Converter$EnsureHashMap;-><init>()V

    return-void
.end method

.method private static c(Lcom/koushikdutta/async/future/Converter$ConverterTransformers;Lcom/koushikdutta/async/future/Converter$ConverterTransformers;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/koushikdutta/async/future/Converter$ConverterTransformers<",
            "TF;TT;>;",
            "Lcom/koushikdutta/async/future/Converter$ConverterTransformers<",
            "TF;TT;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/koushikdutta/async/future/Converter$Converters;->e()Lcom/koushikdutta/async/future/Converter$ConverterTransformers;

    move-result-object v0

    return-object v0
.end method

.method public d(Lcom/koushikdutta/async/future/Converter$MimedType;)Lcom/koushikdutta/async/future/Converter$ConverterTransformers;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/koushikdutta/async/future/Converter$MimedType<",
            "TT;>;)",
            "Lcom/koushikdutta/async/future/Converter$ConverterTransformers<",
            "TF;TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/koushikdutta/async/future/Converter$ConverterTransformers;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/Converter$ConverterTransformers;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/future/Converter$MimedType;

    .line 3
    invoke-virtual {v2, p1}, Lcom/koushikdutta/async/future/Converter$MimedType;->a(Lcom/koushikdutta/async/future/Converter$MimedType;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/future/Converter$ConverterTransformers;

    invoke-static {v0, v2}, Lcom/koushikdutta/async/future/Converter$Converters;->c(Lcom/koushikdutta/async/future/Converter$ConverterTransformers;Lcom/koushikdutta/async/future/Converter$ConverterTransformers;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected e()Lcom/koushikdutta/async/future/Converter$ConverterTransformers;
    .locals 1

    new-instance v0, Lcom/koushikdutta/async/future/Converter$ConverterTransformers;

    invoke-direct {v0}, Lcom/koushikdutta/async/future/Converter$ConverterTransformers;-><init>()V

    return-object v0
.end method
