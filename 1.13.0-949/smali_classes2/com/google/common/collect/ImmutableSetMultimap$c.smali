.class final Lcom/google/common/collect/ImmutableSetMultimap$c;
.super Ljava/lang/Object;
.source "ImmutableSetMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSetMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation build Lh3/c;
.end annotation


# static fields
.field static final a:Lcom/google/common/collect/m4$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/m4$b<",
            "Lcom/google/common/collect/ImmutableSetMultimap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/google/common/collect/ImmutableSetMultimap;

    const-string v1, "emptySet"

    .line 2
    invoke-static {v0, v1}, Lcom/google/common/collect/m4;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/m4$b;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ImmutableSetMultimap$c;->a:Lcom/google/common/collect/m4$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
