.class final Lcom/squareup/moshi/s$d;
.super Ljava/util/AbstractSet;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/moshi/s;
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
.field final synthetic a:Lcom/squareup/moshi/s;


# direct methods
.method constructor <init>(Lcom/squareup/moshi/s;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/moshi/s$d;->a:Lcom/squareup/moshi/s;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/squareup/moshi/s$d;->a:Lcom/squareup/moshi/s;

    invoke-virtual {v0}, Lcom/squareup/moshi/s;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/moshi/s$d;->a:Lcom/squareup/moshi/s;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcom/squareup/moshi/s;->e(Ljava/util/Map$Entry;)Lcom/squareup/moshi/s$g;

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

    new-instance v0, Lcom/squareup/moshi/s$d$a;

    invoke-direct {v0, p0}, Lcom/squareup/moshi/s$d$a;-><init>(Lcom/squareup/moshi/s$d;)V

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
    iget-object v0, p0, Lcom/squareup/moshi/s$d;->a:Lcom/squareup/moshi/s;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lcom/squareup/moshi/s;->e(Ljava/util/Map$Entry;)Lcom/squareup/moshi/s$g;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/squareup/moshi/s$d;->a:Lcom/squareup/moshi/s;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/squareup/moshi/s;->j(Lcom/squareup/moshi/s$g;Z)V

    return v1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/squareup/moshi/s$d;->a:Lcom/squareup/moshi/s;

    iget v0, v0, Lcom/squareup/moshi/s;->d:I

    return v0
.end method
