.class final Lcom/google/common/reflect/TypeToken$i$d;
.super Lcom/google/common/collect/s3;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/reflect/TypeToken$i;->h(Ljava/util/Map;Ljava/util/Comparator;)Lcom/google/common/collect/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/s3<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic c:Ljava/util/Comparator;

.field final synthetic d:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Comparator;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/reflect/TypeToken$i$d;->c:Ljava/util/Comparator;

    iput-object p2, p0, Lcom/google/common/reflect/TypeToken$i$d;->d:Ljava/util/Map;

    invoke-direct {p0}, Lcom/google/common/collect/s3;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/reflect/TypeToken$i$d;->c:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/google/common/reflect/TypeToken$i$d;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/reflect/TypeToken$i$d;->d:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
