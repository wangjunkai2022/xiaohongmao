.class final Lcom/squareup/moshi/s$e;
.super Ljava/util/AbstractSet;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/moshi/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/squareup/moshi/s;


# direct methods
.method constructor <init>(Lcom/squareup/moshi/s;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/moshi/s$e;->a:Lcom/squareup/moshi/s;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/squareup/moshi/s$e;->a:Lcom/squareup/moshi/s;

    invoke-virtual {v0}, Lcom/squareup/moshi/s;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/squareup/moshi/s$e;->a:Lcom/squareup/moshi/s;

    invoke-virtual {v0, p1}, Lcom/squareup/moshi/s;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    new-instance v0, Lcom/squareup/moshi/s$e$a;

    invoke-direct {v0, p0}, Lcom/squareup/moshi/s$e$a;-><init>(Lcom/squareup/moshi/s$e;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/squareup/moshi/s$e;->a:Lcom/squareup/moshi/s;

    invoke-virtual {v0, p1}, Lcom/squareup/moshi/s;->k(Ljava/lang/Object;)Lcom/squareup/moshi/s$g;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/squareup/moshi/s$e;->a:Lcom/squareup/moshi/s;

    iget v0, v0, Lcom/squareup/moshi/s;->d:I

    return v0
.end method
