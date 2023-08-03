.class Lcom/squareup/moshi/s$d$a;
.super Lcom/squareup/moshi/s$f;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/moshi/s$d;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/moshi/s<",
        "TK;TV;>.f<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/squareup/moshi/s$d;


# direct methods
.method constructor <init>(Lcom/squareup/moshi/s$d;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/moshi/s$d$a;->e:Lcom/squareup/moshi/s$d;

    iget-object p1, p1, Lcom/squareup/moshi/s$d;->a:Lcom/squareup/moshi/s;

    invoke-direct {p0, p1}, Lcom/squareup/moshi/s$f;-><init>(Lcom/squareup/moshi/s;)V

    return-void
.end method


# virtual methods
.method public b()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/squareup/moshi/s$f;->a()Lcom/squareup/moshi/s$g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/squareup/moshi/s$d$a;->b()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
