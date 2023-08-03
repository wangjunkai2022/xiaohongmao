.class Lcom/google/common/collect/ImmutableSortedMap$d;
.super Lcom/google/common/collect/ImmutableMap$e;
.source "ImmutableSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# static fields
.field private static final e:J


# instance fields
.field private final d:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableSortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableSortedMap<",
            "**>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMap$e;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/ImmutableSortedMap$d;->d:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method b()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/collect/ImmutableSortedMap$c;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableSortedMap$d;->d:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableSortedMap$c;-><init>(Ljava/util/Comparator;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMap$e;->a(Lcom/google/common/collect/ImmutableMap$b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
