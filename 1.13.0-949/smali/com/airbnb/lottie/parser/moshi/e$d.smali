.class final Lcom/airbnb/lottie/parser/moshi/e$d;
.super Ljava/util/AbstractSet;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/parser/moshi/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/airbnb/lottie/parser/moshi/e;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/parser/moshi/e;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/e$d;->a:Lcom/airbnb/lottie/parser/moshi/e;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e$d;->a:Lcom/airbnb/lottie/parser/moshi/e;

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/e;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e$d;->a:Lcom/airbnb/lottie/parser/moshi/e;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/parser/moshi/e;->e(Ljava/util/Map$Entry;)Lcom/airbnb/lottie/parser/moshi/e$g;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/airbnb/lottie/parser/moshi/e$d$a;

    invoke-direct {v0, p0}, Lcom/airbnb/lottie/parser/moshi/e$d$a;-><init>(Lcom/airbnb/lottie/parser/moshi/e$d;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e$d;->a:Lcom/airbnb/lottie/parser/moshi/e;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/parser/moshi/e;->e(Ljava/util/Map$Entry;)Lcom/airbnb/lottie/parser/moshi/e$g;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e$d;->a:Lcom/airbnb/lottie/parser/moshi/e;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/airbnb/lottie/parser/moshi/e;->j(Lcom/airbnb/lottie/parser/moshi/e$g;Z)V

    return v1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/parser/moshi/e$d;->a:Lcom/airbnb/lottie/parser/moshi/e;

    iget v0, v0, Lcom/airbnb/lottie/parser/moshi/e;->d:I

    return v0
.end method
