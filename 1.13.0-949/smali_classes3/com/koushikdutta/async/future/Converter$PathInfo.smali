.class Lcom/koushikdutta/async/future/Converter$PathInfo;
.super Ljava/lang/Object;
.source "Converter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/future/Converter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PathInfo"
.end annotation


# instance fields
.field a:Lcom/koushikdutta/async/future/Converter$MultiTransformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/koushikdutta/async/future/Converter$MultiTransformer<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/String;

.field c:Lcom/koushikdutta/async/future/Converter$MimedType;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/util/ArrayDeque;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayDeque<",
            "Lcom/koushikdutta/async/future/Converter$PathInfo;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/future/Converter$PathInfo;

    .line 2
    iget-object v1, v1, Lcom/koushikdutta/async/future/Converter$PathInfo;->a:Lcom/koushikdutta/async/future/Converter$MultiTransformer;

    iget v1, v1, Lcom/koushikdutta/async/future/Converter$MultiTransformer;->o:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method
