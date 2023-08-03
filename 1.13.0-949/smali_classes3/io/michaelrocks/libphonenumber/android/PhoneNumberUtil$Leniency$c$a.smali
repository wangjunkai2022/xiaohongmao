.class Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency$c$a;
.super Ljava/lang/Object;
.source "PhoneNumberUtil.java"

# interfaces
.implements Lio/michaelrocks/libphonenumber/android/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency$c;->a(Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/k;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency$c;


# direct methods
.method constructor <init>(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency$c$a;->a:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "util",
            "number",
            "normalizedCandidate",
            "expectedNumberGroups"
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lio/michaelrocks/libphonenumber/android/k;->b(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Lio/michaelrocks/libphonenumber/android/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
