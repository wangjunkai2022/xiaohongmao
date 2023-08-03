.class public final enum Leltos/simpledialogfragment/form/DateTime$Type;
.super Ljava/lang/Enum;
.source "DateTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leltos/simpledialogfragment/form/DateTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Leltos/simpledialogfragment/form/DateTime$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DATE:Leltos/simpledialogfragment/form/DateTime$Type;

.field public static final enum DATETIME:Leltos/simpledialogfragment/form/DateTime$Type;

.field public static final enum TIME:Leltos/simpledialogfragment/form/DateTime$Type;

.field private static final synthetic a:[Leltos/simpledialogfragment/form/DateTime$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Leltos/simpledialogfragment/form/DateTime$Type;

    const-string v1, "DATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Leltos/simpledialogfragment/form/DateTime$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Leltos/simpledialogfragment/form/DateTime$Type;->DATE:Leltos/simpledialogfragment/form/DateTime$Type;

    new-instance v1, Leltos/simpledialogfragment/form/DateTime$Type;

    const-string v3, "TIME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Leltos/simpledialogfragment/form/DateTime$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Leltos/simpledialogfragment/form/DateTime$Type;->TIME:Leltos/simpledialogfragment/form/DateTime$Type;

    new-instance v3, Leltos/simpledialogfragment/form/DateTime$Type;

    const-string v5, "DATETIME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Leltos/simpledialogfragment/form/DateTime$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Leltos/simpledialogfragment/form/DateTime$Type;->DATETIME:Leltos/simpledialogfragment/form/DateTime$Type;

    const/4 v5, 0x3

    new-array v5, v5, [Leltos/simpledialogfragment/form/DateTime$Type;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Leltos/simpledialogfragment/form/DateTime$Type;->a:[Leltos/simpledialogfragment/form/DateTime$Type;

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

.method public static valueOf(Ljava/lang/String;)Leltos/simpledialogfragment/form/DateTime$Type;
    .locals 1

    const-class v0, Leltos/simpledialogfragment/form/DateTime$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Leltos/simpledialogfragment/form/DateTime$Type;

    return-object p0
.end method

.method public static values()[Leltos/simpledialogfragment/form/DateTime$Type;
    .locals 1

    sget-object v0, Leltos/simpledialogfragment/form/DateTime$Type;->a:[Leltos/simpledialogfragment/form/DateTime$Type;

    invoke-virtual {v0}, [Leltos/simpledialogfragment/form/DateTime$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Leltos/simpledialogfragment/form/DateTime$Type;

    return-object v0
.end method
