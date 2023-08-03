.class Lcom/google/common/collect/ImmutableBiMap$b;
.super Lcom/google/common/collect/ImmutableMap$e;
.source "ImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final d:J


# direct methods
.method constructor <init>(Lcom/google/common/collect/ImmutableBiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableBiMap<",
            "**>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableMap$e;-><init>(Lcom/google/common/collect/ImmutableMap;)V

    return-void
.end method


# virtual methods
.method b()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/common/collect/ImmutableBiMap$a;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableBiMap$a;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableMap$e;->a(Lcom/google/common/collect/ImmutableMap$b;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
