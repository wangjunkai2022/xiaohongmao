.class final enum Lcom/google/common/collect/d3$a;
.super Ljava/lang/Enum;
.source "MapMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/d3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/d3$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/collect/d3$a;

.field private static final synthetic b:[Lcom/google/common/collect/d3$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/collect/d3$a;

    const-string v1, "VALUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/d3$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/d3$a;->a:Lcom/google/common/collect/d3$a;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/common/collect/d3$a;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lcom/google/common/collect/d3$a;->b:[Lcom/google/common/collect/d3$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/d3$a;
    .locals 1

    const-class v0, Lcom/google/common/collect/d3$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/d3$a;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/d3$a;
    .locals 1

    sget-object v0, Lcom/google/common/collect/d3$a;->b:[Lcom/google/common/collect/d3$a;

    invoke-virtual {v0}, [Lcom/google/common/collect/d3$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/d3$a;

    return-object v0
.end method
