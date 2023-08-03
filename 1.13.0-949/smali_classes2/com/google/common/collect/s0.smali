.class Lcom/google/common/collect/s0;
.super Lcom/google/common/collect/ImmutableSetMultimap;
.source "EmptyImmutableSetMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableSetMultimap<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation build Lh3/b;
    serializable = true
.end annotation


# static fields
.field static final m:Lcom/google/common/collect/s0;

.field private static final n:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/s0;

    invoke-direct {v0}, Lcom/google/common/collect/s0;-><init>()V

    sput-object v0, Lcom/google/common/collect/s0;->m:Lcom/google/common/collect/s0;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/common/collect/ImmutableSetMultimap;-><init>(Lcom/google/common/collect/ImmutableMap;ILjava/util/Comparator;)V

    return-void
.end method

.method private z()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/common/collect/s0;->m:Lcom/google/common/collect/s0;

    return-object v0
.end method
