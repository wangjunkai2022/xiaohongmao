.class final enum Lcom/gigamole/infinitecycleviewpager/b$f;
.super Ljava/lang/Enum;
.source "InfiniteCycleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gigamole/infinitecycleviewpager/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gigamole/infinitecycleviewpager/b$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/gigamole/infinitecycleviewpager/b$f;

.field public static final enum b:Lcom/gigamole/infinitecycleviewpager/b$f;

.field public static final enum c:Lcom/gigamole/infinitecycleviewpager/b$f;

.field private static final synthetic d:[Lcom/gigamole/infinitecycleviewpager/b$f;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/gigamole/infinitecycleviewpager/b$f;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gigamole/infinitecycleviewpager/b$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gigamole/infinitecycleviewpager/b$f;->a:Lcom/gigamole/infinitecycleviewpager/b$f;

    new-instance v1, Lcom/gigamole/infinitecycleviewpager/b$f;

    const-string v3, "GOING_LEFT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/gigamole/infinitecycleviewpager/b$f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/gigamole/infinitecycleviewpager/b$f;->b:Lcom/gigamole/infinitecycleviewpager/b$f;

    new-instance v3, Lcom/gigamole/infinitecycleviewpager/b$f;

    const-string v5, "GOING_RIGHT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/gigamole/infinitecycleviewpager/b$f;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/gigamole/infinitecycleviewpager/b$f;->c:Lcom/gigamole/infinitecycleviewpager/b$f;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/gigamole/infinitecycleviewpager/b$f;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcom/gigamole/infinitecycleviewpager/b$f;->d:[Lcom/gigamole/infinitecycleviewpager/b$f;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gigamole/infinitecycleviewpager/b$f;
    .locals 1

    const-class v0, Lcom/gigamole/infinitecycleviewpager/b$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gigamole/infinitecycleviewpager/b$f;

    return-object p0
.end method

.method public static values()[Lcom/gigamole/infinitecycleviewpager/b$f;
    .locals 1

    sget-object v0, Lcom/gigamole/infinitecycleviewpager/b$f;->d:[Lcom/gigamole/infinitecycleviewpager/b$f;

    invoke-virtual {v0}, [Lcom/gigamole/infinitecycleviewpager/b$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gigamole/infinitecycleviewpager/b$f;

    return-object v0
.end method