.class final Lcom/google/common/collect/c1$c;
.super Lcom/google/common/collect/c1;
.source "FluentIterable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/c1;->k([Ljava/lang/Iterable;)Lcom/google/common/collect/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/c1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic b:[Ljava/lang/Iterable;


# direct methods
.method constructor <init>([Ljava/lang/Iterable;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/c1$c;->b:[Ljava/lang/Iterable;

    invoke-direct {p0}, Lcom/google/common/collect/c1;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/c1$c$a;

    iget-object v1, p0, Lcom/google/common/collect/c1$c;->b:[Ljava/lang/Iterable;

    array-length v1, v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/c1$c$a;-><init>(Lcom/google/common/collect/c1$c;I)V

    invoke-static {v0}, Lcom/google/common/collect/x2;->i(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
