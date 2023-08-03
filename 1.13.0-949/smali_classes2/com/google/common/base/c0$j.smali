.class abstract enum Lcom/google/common/base/c0$j;
.super Ljava/lang/Enum;
.source "Predicates.java"

# interfaces
.implements Lcom/google/common/base/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4408
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/base/c0$j;",
        ">;",
        "Lcom/google/common/base/b0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/base/c0$j;

.field public static final enum b:Lcom/google/common/base/c0$j;

.field public static final enum c:Lcom/google/common/base/c0$j;

.field public static final enum d:Lcom/google/common/base/c0$j;

.field private static final synthetic e:[Lcom/google/common/base/c0$j;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/common/base/c0$j$a;

    const-string v1, "ALWAYS_TRUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/base/c0$j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/base/c0$j;->a:Lcom/google/common/base/c0$j;

    .line 2
    new-instance v1, Lcom/google/common/base/c0$j$b;

    const-string v3, "ALWAYS_FALSE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/common/base/c0$j$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/base/c0$j;->b:Lcom/google/common/base/c0$j;

    .line 3
    new-instance v3, Lcom/google/common/base/c0$j$c;

    const-string v5, "IS_NULL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/common/base/c0$j$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/common/base/c0$j;->c:Lcom/google/common/base/c0$j;

    .line 4
    new-instance v5, Lcom/google/common/base/c0$j$d;

    const-string v7, "NOT_NULL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/common/base/c0$j$d;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/common/base/c0$j;->d:Lcom/google/common/base/c0$j;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/common/base/c0$j;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lcom/google/common/base/c0$j;->e:[Lcom/google/common/base/c0$j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/base/c0$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/base/c0$j;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/c0$j;
    .locals 1

    const-class v0, Lcom/google/common/base/c0$j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/base/c0$j;

    return-object p0
.end method

.method public static values()[Lcom/google/common/base/c0$j;
    .locals 1

    sget-object v0, Lcom/google/common/base/c0$j;->e:[Lcom/google/common/base/c0$j;

    invoke-virtual {v0}, [Lcom/google/common/base/c0$j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/c0$j;

    return-object v0
.end method


# virtual methods
.method a()Lcom/google/common/base/b0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/b0<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method
