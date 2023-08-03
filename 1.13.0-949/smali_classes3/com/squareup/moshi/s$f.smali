.class abstract Lcom/squareup/moshi/s$f;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/moshi/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field a:Lcom/squareup/moshi/s$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/moshi/s$g<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field b:Lcom/squareup/moshi/s$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/moshi/s$g<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field c:I

.field final synthetic d:Lcom/squareup/moshi/s;


# direct methods
.method constructor <init>(Lcom/squareup/moshi/s;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/squareup/moshi/s$f;->d:Lcom/squareup/moshi/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/squareup/moshi/s;->c:Lcom/squareup/moshi/s$g;

    iget-object v0, v0, Lcom/squareup/moshi/s$g;->d:Lcom/squareup/moshi/s$g;

    iput-object v0, p0, Lcom/squareup/moshi/s$f;->a:Lcom/squareup/moshi/s$g;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/squareup/moshi/s$f;->b:Lcom/squareup/moshi/s$g;

    .line 4
    iget p1, p1, Lcom/squareup/moshi/s;->e:I

    iput p1, p0, Lcom/squareup/moshi/s$f;->c:I

    return-void
.end method


# virtual methods
.method final a()Lcom/squareup/moshi/s$g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/moshi/s$g<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/squareup/moshi/s$f;->a:Lcom/squareup/moshi/s$g;

    .line 2
    iget-object v1, p0, Lcom/squareup/moshi/s$f;->d:Lcom/squareup/moshi/s;

    iget-object v2, v1, Lcom/squareup/moshi/s;->c:Lcom/squareup/moshi/s$g;

    if-eq v0, v2, :cond_1

    .line 3
    iget v1, v1, Lcom/squareup/moshi/s;->e:I

    iget v2, p0, Lcom/squareup/moshi/s$f;->c:I

    if-ne v1, v2, :cond_0

    .line 4
    iget-object v1, v0, Lcom/squareup/moshi/s$g;->d:Lcom/squareup/moshi/s$g;

    iput-object v1, p0, Lcom/squareup/moshi/s$f;->a:Lcom/squareup/moshi/s$g;

    .line 5
    iput-object v0, p0, Lcom/squareup/moshi/s$f;->b:Lcom/squareup/moshi/s$g;

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 7
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/squareup/moshi/s$f;->a:Lcom/squareup/moshi/s$g;

    iget-object v1, p0, Lcom/squareup/moshi/s$f;->d:Lcom/squareup/moshi/s;

    iget-object v1, v1, Lcom/squareup/moshi/s;->c:Lcom/squareup/moshi/s$g;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final remove()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/squareup/moshi/s$f;->b:Lcom/squareup/moshi/s$g;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/squareup/moshi/s$f;->d:Lcom/squareup/moshi/s;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/squareup/moshi/s;->j(Lcom/squareup/moshi/s$g;Z)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/squareup/moshi/s$f;->b:Lcom/squareup/moshi/s$g;

    .line 4
    iget-object v0, p0, Lcom/squareup/moshi/s$f;->d:Lcom/squareup/moshi/s;

    iget v0, v0, Lcom/squareup/moshi/s;->e:I

    iput v0, p0, Lcom/squareup/moshi/s$f;->c:I

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
