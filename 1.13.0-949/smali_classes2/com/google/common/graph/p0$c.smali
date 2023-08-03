.class final enum Lcom/google/common/graph/p0$c;
.super Ljava/lang/Enum;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/p0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/graph/p0$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/graph/p0$c;

.field public static final enum b:Lcom/google/common/graph/p0$c;

.field private static final synthetic c:[Lcom/google/common/graph/p0$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/common/graph/p0$c;

    const-string v1, "PREORDER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/graph/p0$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/graph/p0$c;->a:Lcom/google/common/graph/p0$c;

    .line 2
    new-instance v1, Lcom/google/common/graph/p0$c;

    const-string v3, "POSTORDER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/common/graph/p0$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/graph/p0$c;->b:Lcom/google/common/graph/p0$c;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/common/graph/p0$c;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/google/common/graph/p0$c;->c:[Lcom/google/common/graph/p0$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/graph/p0$c;
    .locals 1

    const-class v0, Lcom/google/common/graph/p0$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/graph/p0$c;

    return-object p0
.end method

.method public static values()[Lcom/google/common/graph/p0$c;
    .locals 1

    sget-object v0, Lcom/google/common/graph/p0$c;->c:[Lcom/google/common/graph/p0$c;

    invoke-virtual {v0}, [Lcom/google/common/graph/p0$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/graph/p0$c;

    return-object v0
.end method
