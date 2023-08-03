.class final enum Lcom/facebook/datasource/a$d;
.super Ljava/lang/Enum;
.source "AbstractDataSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/datasource/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/datasource/a$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/datasource/a$d;

.field public static final enum b:Lcom/facebook/datasource/a$d;

.field public static final enum c:Lcom/facebook/datasource/a$d;

.field private static final synthetic d:[Lcom/facebook/datasource/a$d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/facebook/datasource/a$d;

    const-string v1, "IN_PROGRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/facebook/datasource/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/datasource/a$d;->a:Lcom/facebook/datasource/a$d;

    .line 2
    new-instance v1, Lcom/facebook/datasource/a$d;

    const-string v3, "SUCCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/facebook/datasource/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/facebook/datasource/a$d;->b:Lcom/facebook/datasource/a$d;

    .line 3
    new-instance v3, Lcom/facebook/datasource/a$d;

    const-string v5, "FAILURE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/facebook/datasource/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/facebook/datasource/a$d;->c:Lcom/facebook/datasource/a$d;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/facebook/datasource/a$d;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/facebook/datasource/a$d;->d:[Lcom/facebook/datasource/a$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "$enum$name",
            "$enum$ordinal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/datasource/a$d;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lcom/facebook/datasource/a$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/datasource/a$d;

    return-object p0
.end method

.method public static values()[Lcom/facebook/datasource/a$d;
    .locals 1

    sget-object v0, Lcom/facebook/datasource/a$d;->d:[Lcom/facebook/datasource/a$d;

    invoke-virtual {v0}, [Lcom/facebook/datasource/a$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/datasource/a$d;

    return-object v0
.end method
