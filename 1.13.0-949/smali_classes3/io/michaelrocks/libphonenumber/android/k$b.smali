.class final enum Lio/michaelrocks/libphonenumber/android/k$b;
.super Ljava/lang/Enum;
.source "PhoneNumberMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/michaelrocks/libphonenumber/android/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/michaelrocks/libphonenumber/android/k$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/michaelrocks/libphonenumber/android/k$b;

.field public static final enum b:Lio/michaelrocks/libphonenumber/android/k$b;

.field public static final enum c:Lio/michaelrocks/libphonenumber/android/k$b;

.field private static final synthetic d:[Lio/michaelrocks/libphonenumber/android/k$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lio/michaelrocks/libphonenumber/android/k$b;

    const-string v1, "NOT_READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/michaelrocks/libphonenumber/android/k$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/michaelrocks/libphonenumber/android/k$b;->a:Lio/michaelrocks/libphonenumber/android/k$b;

    new-instance v1, Lio/michaelrocks/libphonenumber/android/k$b;

    const-string v3, "READY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/michaelrocks/libphonenumber/android/k$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/michaelrocks/libphonenumber/android/k$b;->b:Lio/michaelrocks/libphonenumber/android/k$b;

    new-instance v3, Lio/michaelrocks/libphonenumber/android/k$b;

    const-string v5, "DONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/michaelrocks/libphonenumber/android/k$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/michaelrocks/libphonenumber/android/k$b;->c:Lio/michaelrocks/libphonenumber/android/k$b;

    const/4 v5, 0x3

    new-array v5, v5, [Lio/michaelrocks/libphonenumber/android/k$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lio/michaelrocks/libphonenumber/android/k$b;->d:[Lio/michaelrocks/libphonenumber/android/k$b;

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

.method public static valueOf(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/k$b;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lio/michaelrocks/libphonenumber/android/k$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/michaelrocks/libphonenumber/android/k$b;

    return-object p0
.end method

.method public static values()[Lio/michaelrocks/libphonenumber/android/k$b;
    .locals 1

    sget-object v0, Lio/michaelrocks/libphonenumber/android/k$b;->d:[Lio/michaelrocks/libphonenumber/android/k$b;

    invoke-virtual {v0}, [Lio/michaelrocks/libphonenumber/android/k$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/michaelrocks/libphonenumber/android/k$b;

    return-object v0
.end method
