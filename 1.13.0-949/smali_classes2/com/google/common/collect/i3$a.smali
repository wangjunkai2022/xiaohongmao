.class final Lcom/google/common/collect/i3$a;
.super Lcom/google/common/collect/i3$k;
.source "MultimapBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/i3;->e(I)Lcom/google/common/collect/i3$k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/i3$k<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/common/collect/i3$a;->b:I

    invoke-direct {p0}, Lcom/google/common/collect/i3$k;-><init>()V

    return-void
.end method


# virtual methods
.method c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/collect/i3$a;->b:I

    invoke-static {v0}, Lcom/google/common/collect/u3;->c(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
