.class final Lio/sentry/clientreport/c;
.super Ljava/lang/Object;
.source "ClientReportKey.java"


# annotations
.annotation build Lm8/a$c;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/sentry/clientreport/c;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lio/sentry/clientreport/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/clientreport/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lio/sentry/clientreport/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lio/sentry/clientreport/c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lio/sentry/clientreport/c;

    .line 3
    invoke-virtual {p0}, Lio/sentry/clientreport/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/sentry/clientreport/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lio/sentry/util/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p0}, Lio/sentry/clientreport/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/sentry/clientreport/c;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lio/sentry/util/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lio/sentry/clientreport/c;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lio/sentry/clientreport/c;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lio/sentry/util/l;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
