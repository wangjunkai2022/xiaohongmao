.class Lcom/google/common/collect/ImmutableMultimap$e;
.super Ljava/lang/Object;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation

.annotation build Lh3/c;
.end annotation


# static fields
.field static final a:Lcom/google/common/collect/m4$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/m4$b<",
            "Lcom/google/common/collect/ImmutableMultimap;",
            ">;"
        }
    .end annotation
.end field

.field static final b:Lcom/google/common/collect/m4$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/m4$b<",
            "Lcom/google/common/collect/ImmutableMultimap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/google/common/collect/ImmutableMultimap;

    const-string v1, "map"

    .line 2
    invoke-static {v0, v1}, Lcom/google/common/collect/m4;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/m4$b;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ImmutableMultimap$e;->a:Lcom/google/common/collect/m4$b;

    .line 3
    const-class v0, Lcom/google/common/collect/ImmutableMultimap;

    const-string v1, "size"

    .line 4
    invoke-static {v0, v1}, Lcom/google/common/collect/m4;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/m4$b;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ImmutableMultimap$e;->b:Lcom/google/common/collect/m4$b;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
