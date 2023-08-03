.class final enum Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;
.super Ljava/lang/Enum;
.source "ZoomLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

.field public static final enum b:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

.field public static final enum c:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

.field private static final synthetic d:[Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;->a:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

    .line 2
    new-instance v1, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

    const-string v3, "DRAG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;->b:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

    .line 3
    new-instance v3, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

    const-string v5, "ZOOM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;->c:Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

    const/4 v5, 0x3

    new-array v5, v5, [Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;->d:[Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

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

.method public static valueOf(Ljava/lang/String;)Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;
    .locals 1

    const-class v0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

    return-object p0
.end method

.method public static values()[Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;
    .locals 1

    sget-object v0, Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;->d:[Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

    invoke-virtual {v0}, [Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Liamutkarshtiwari/github/io/ananas/editimage/layout/ZoomLayout$a;

    return-object v0
.end method
