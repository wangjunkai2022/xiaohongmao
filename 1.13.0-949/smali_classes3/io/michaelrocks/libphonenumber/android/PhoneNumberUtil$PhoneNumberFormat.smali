.class public final enum Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;
.super Ljava/lang/Enum;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneNumberFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum E164:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;

.field public static final enum INTERNATIONAL:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;

.field public static final enum NATIONAL:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;

.field public static final enum RFC3966:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;

.field private static final synthetic a:[Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;

    const-string v1, "E164"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;->E164:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;

    .line 2
    new-instance v1, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;

    const-string v3, "INTERNATIONAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;

    .line 3
    new-instance v3, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;

    const-string v5, "NATIONAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;

    .line 4
    new-instance v5, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;

    const-string v7, "RFC3966"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;

    const/4 v7, 0x4

    new-array v7, v7, [Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;->a:[Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;

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

.method public static valueOf(Ljava/lang/String;)Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    const-class v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;

    return-object p0
.end method

.method public static values()[Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;
    .locals 1

    sget-object v0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;->a:[Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v0}, [Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$PhoneNumberFormat;

    return-object v0
.end method
