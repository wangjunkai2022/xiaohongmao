.class public Lio/michaelrocks/libphonenumber/android/internal/c;
.super Ljava/lang/Object;
.source "RegexCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/michaelrocks/libphonenumber/android/internal/c$a;
    }
.end annotation


# instance fields
.field private a:Lio/michaelrocks/libphonenumber/android/internal/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/michaelrocks/libphonenumber/android/internal/c$a<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lio/michaelrocks/libphonenumber/android/internal/c$a;

    invoke-direct {v0, p1}, Lio/michaelrocks/libphonenumber/android/internal/c$a;-><init>(I)V

    iput-object v0, p0, Lio/michaelrocks/libphonenumber/android/internal/c;->a:Lio/michaelrocks/libphonenumber/android/internal/c$a;

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "regex"
        }
    .end annotation

    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/internal/c;->a:Lio/michaelrocks/libphonenumber/android/internal/c$a;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/internal/c$a;->b(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "regex"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/michaelrocks/libphonenumber/android/internal/c;->a:Lio/michaelrocks/libphonenumber/android/internal/c$a;

    invoke-virtual {v0, p1}, Lio/michaelrocks/libphonenumber/android/internal/c$a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lio/michaelrocks/libphonenumber/android/internal/c;->a:Lio/michaelrocks/libphonenumber/android/internal/c$a;

    invoke-virtual {v1, p1, v0}, Lio/michaelrocks/libphonenumber/android/internal/c$a;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method
