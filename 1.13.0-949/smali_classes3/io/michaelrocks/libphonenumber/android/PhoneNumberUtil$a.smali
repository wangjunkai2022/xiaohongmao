.class Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$a;
.super Ljava/lang/Object;
.source "PhoneNumberUtil.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;->p(Ljava/lang/CharSequence;Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lio/michaelrocks/libphonenumber/android/j;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/CharSequence;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;

.field final synthetic d:J

.field final synthetic e:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;


# direct methods
.method constructor <init>(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$maxTries",
            "val$leniency",
            "val$defaultRegion",
            "val$text"
        }
    .end annotation

    iput-object p1, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$a;->e:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    iput-object p2, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$a;->a:Ljava/lang/CharSequence;

    iput-object p3, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$a;->b:Ljava/lang/String;

    iput-object p4, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$a;->c:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;

    iput-wide p5, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$a;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/michaelrocks/libphonenumber/android/j;",
            ">;"
        }
    .end annotation

    new-instance v7, Lio/michaelrocks/libphonenumber/android/k;

    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$a;->e:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;

    iget-object v2, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$a;->a:Ljava/lang/CharSequence;

    iget-object v3, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$a;->b:Ljava/lang/String;

    iget-object v4, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$a;->c:Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;

    iget-wide v5, p0, Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$a;->d:J

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/michaelrocks/libphonenumber/android/k;-><init>(Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lio/michaelrocks/libphonenumber/android/PhoneNumberUtil$Leniency;J)V

    return-object v7
.end method
