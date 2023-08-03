.class Lcom/airbnb/lottie/parser/moshi/e$d$a;
.super Lcom/airbnb/lottie/parser/moshi/e$f;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/parser/moshi/e$d;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/parser/moshi/e<",
        "TK;TV;>.f<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/airbnb/lottie/parser/moshi/e$d;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/parser/moshi/e$d;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/parser/moshi/e$d$a;->e:Lcom/airbnb/lottie/parser/moshi/e$d;

    iget-object p1, p1, Lcom/airbnb/lottie/parser/moshi/e$d;->a:Lcom/airbnb/lottie/parser/moshi/e;

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/parser/moshi/e$f;-><init>(Lcom/airbnb/lottie/parser/moshi/e;)V

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

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/e$f;->a()Lcom/airbnb/lottie/parser/moshi/e$g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/airbnb/lottie/parser/moshi/e$d$a;->b()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
