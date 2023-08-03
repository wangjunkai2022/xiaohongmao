.class Lcom/google/common/collect/r0;
.super Lcom/google/common/collect/ImmutableListMultimap;
.source "EmptyImmutableListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ImmutableListMultimap<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation build Lh3/b;
    serializable = true
.end annotation


# static fields
.field static final k:Lcom/google/common/collect/r0;

.field private static final l:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/r0;

    invoke-direct {v0}, Lcom/google/common/collect/r0;-><init>()V

    sput-object v0, Lcom/google/common/collect/r0;->k:Lcom/google/common/collect/r0;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ImmutableListMultimap;-><init>(Lcom/google/common/collect/ImmutableMap;I)V

    return-void
.end method

.method private u()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/google/common/collect/r0;->k:Lcom/google/common/collect/r0;

    return-object v0
.end method
