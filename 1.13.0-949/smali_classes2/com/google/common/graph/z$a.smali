.class final enum Lcom/google/common/graph/z$a;
.super Ljava/lang/Enum;
.source "GraphConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/graph/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/graph/z$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/graph/z$a;

.field private static final synthetic b:[Lcom/google/common/graph/z$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/graph/z$a;

    const-string v1, "EDGE_EXISTS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/graph/z$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/graph/z$a;->a:Lcom/google/common/graph/z$a;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/common/graph/z$a;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lcom/google/common/graph/z$a;->b:[Lcom/google/common/graph/z$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/graph/z$a;
    .locals 1

    const-class v0, Lcom/google/common/graph/z$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/graph/z$a;

    return-object p0
.end method

.method public static values()[Lcom/google/common/graph/z$a;
    .locals 1

    sget-object v0, Lcom/google/common/graph/z$a;->b:[Lcom/google/common/graph/z$a;

    invoke-virtual {v0}, [Lcom/google/common/graph/z$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/graph/z$a;

    return-object v0
.end method
