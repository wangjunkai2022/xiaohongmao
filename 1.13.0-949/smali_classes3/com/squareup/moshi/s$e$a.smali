.class Lcom/squareup/moshi/s$e$a;
.super Lcom/squareup/moshi/s$f;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/moshi/s$e;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/moshi/s<",
        "TK;TV;>.f<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/squareup/moshi/s$e;


# direct methods
.method constructor <init>(Lcom/squareup/moshi/s$e;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/moshi/s$e$a;->e:Lcom/squareup/moshi/s$e;

    iget-object p1, p1, Lcom/squareup/moshi/s$e;->a:Lcom/squareup/moshi/s;

    invoke-direct {p0, p1}, Lcom/squareup/moshi/s$f;-><init>(Lcom/squareup/moshi/s;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/squareup/moshi/s$f;->a()Lcom/squareup/moshi/s$g;

    move-result-object v0

    iget-object v0, v0, Lcom/squareup/moshi/s$g;->f:Ljava/lang/Object;

    return-object v0
.end method
