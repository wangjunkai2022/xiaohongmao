.class Lcom/google/common/collect/a0$a;
.super Lcom/google/common/collect/a0$e;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/a0;->w()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/a0<",
        "TK;TV;>.e<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/google/common/collect/a0;


# direct methods
.method constructor <init>(Lcom/google/common/collect/a0;)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/a0$a;->e:Lcom/google/common/collect/a0;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/common/collect/a0$e;-><init>(Lcom/google/common/collect/a0;Lcom/google/common/collect/a0$a;)V

    return-void
.end method


# virtual methods
.method b(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/a0$a;->e:Lcom/google/common/collect/a0;

    iget-object v0, v0, Lcom/google/common/collect/a0;->c:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method
