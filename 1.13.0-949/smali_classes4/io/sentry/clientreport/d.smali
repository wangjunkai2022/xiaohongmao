.class public final Lio/sentry/clientreport/d;
.super Ljava/lang/Object;
.source "ClientReportRecorder.java"

# interfaces
.implements Lio/sentry/clientreport/f;


# annotations
.annotation build Lm8/a$c;
.end annotation


# instance fields
.field private final a:Lio/sentry/clientreport/g;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lio/sentry/SentryOptions;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 0
    .param p1    # Lio/sentry/SentryOptions;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/sentry/clientreport/d;->b:Lio/sentry/SentryOptions;

    .line 3
    new-instance p1, Lio/sentry/clientreport/a;

    invoke-direct {p1}, Lio/sentry/clientreport/a;-><init>()V

    iput-object p1, p0, Lio/sentry/clientreport/d;->a:Lio/sentry/clientreport/g;

    return-void
.end method

.method private e(Lio/sentry/SentryItemType;)Lio/sentry/DataCategory;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/SentryItemType;->Event:Lio/sentry/SentryItemType;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lio/sentry/DataCategory;->Error:Lio/sentry/DataCategory;

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Lio/sentry/SentryItemType;->Session:Lio/sentry/SentryItemType;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p1, Lio/sentry/DataCategory;->Session:Lio/sentry/DataCategory;

    return-object p1

    .line 5
    :cond_1
    sget-object v0, Lio/sentry/SentryItemType;->Transaction:Lio/sentry/SentryItemType;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    sget-object p1, Lio/sentry/DataCategory;->Transaction:Lio/sentry/DataCategory;

    return-object p1

    .line 7
    :cond_2
    sget-object v0, Lio/sentry/SentryItemType;->UserFeedback:Lio/sentry/SentryItemType;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    sget-object p1, Lio/sentry/DataCategory;->UserReport:Lio/sentry/DataCategory;

    return-object p1

    .line 9
    :cond_3
    sget-object v0, Lio/sentry/SentryItemType;->Attachment:Lio/sentry/SentryItemType;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    sget-object p1, Lio/sentry/DataCategory;->Attachment:Lio/sentry/DataCategory;

    return-object p1

    .line 11
    :cond_4
    sget-object p1, Lio/sentry/DataCategory;->Default:Lio/sentry/DataCategory;

    return-object p1
.end method

.method private f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Long;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/sentry/clientreport/c;

    invoke-direct {v0, p1, p2}, Lio/sentry/clientreport/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lio/sentry/clientreport/d;->a:Lio/sentry/clientreport/g;

    invoke-interface {p1, v0, p3}, Lio/sentry/clientreport/g;->a(Lio/sentry/clientreport/c;Ljava/lang/Long;)V

    return-void
.end method

.method private h(Lio/sentry/clientreport/b;)V
    .locals 3
    .param p1    # Lio/sentry/clientreport/b;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lio/sentry/clientreport/b;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/clientreport/e;

    .line 2
    invoke-virtual {v0}, Lio/sentry/clientreport/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lio/sentry/clientreport/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/sentry/clientreport/e;->b()Ljava/lang/Long;

    move-result-object v0

    .line 3
    invoke-direct {p0, v1, v2, v0}, Lio/sentry/clientreport/d;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lio/sentry/clientreport/DiscardReason;Lio/sentry/DataCategory;)V
    .locals 3
    .param p1    # Lio/sentry/clientreport/DiscardReason;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/DataCategory;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lio/sentry/clientreport/DiscardReason;->getReason()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lio/sentry/DataCategory;->getCategory()Ljava/lang/String;

    move-result-object p2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lio/sentry/clientreport/d;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    iget-object p2, p0, Lio/sentry/clientreport/d;->b:Lio/sentry/SentryOptions;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Unable to record lost event."

    invoke-interface {p2, v0, p1, v2, v1}, Lio/sentry/o0;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public b(Lio/sentry/clientreport/DiscardReason;Lio/sentry/l3;)V
    .locals 3
    .param p1    # Lio/sentry/clientreport/DiscardReason;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/l3;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/l3;->e()Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/f4;

    .line 2
    invoke-virtual {p0, p1, v0}, Lio/sentry/clientreport/d;->c(Lio/sentry/clientreport/DiscardReason;Lio/sentry/f4;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    iget-object p2, p0, Lio/sentry/clientreport/d;->b:Lio/sentry/SentryOptions;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Unable to record lost envelope."

    invoke-interface {p2, v0, p1, v2, v1}, Lio/sentry/o0;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public c(Lio/sentry/clientreport/DiscardReason;Lio/sentry/f4;)V
    .locals 3
    .param p1    # Lio/sentry/clientreport/DiscardReason;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lio/sentry/f4;
        .annotation build Lm8/h;
        .end annotation
    .end param

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lio/sentry/f4;->C()Lio/sentry/g4;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/g4;->e()Lio/sentry/SentryItemType;

    move-result-object v1

    .line 2
    sget-object v2, Lio/sentry/SentryItemType;->ClientReport:Lio/sentry/SentryItemType;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 3
    :try_start_1
    iget-object p1, p0, Lio/sentry/clientreport/d;->b:Lio/sentry/SentryOptions;

    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/u0;

    move-result-object p1

    invoke-virtual {p2, p1}, Lio/sentry/f4;->z(Lio/sentry/u0;)Lio/sentry/clientreport/b;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lio/sentry/clientreport/d;->h(Lio/sentry/clientreport/b;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5
    :catch_0
    :try_start_2
    iget-object p1, p0, Lio/sentry/clientreport/d;->b:Lio/sentry/SentryOptions;

    .line 6
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p1

    sget-object p2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v1, "Unable to restore counts from previous client report."

    new-array v2, v0, [Ljava/lang/Object;

    .line 7
    invoke-interface {p1, p2, v1, v2}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lio/sentry/clientreport/DiscardReason;->getReason()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1}, Lio/sentry/clientreport/d;->e(Lio/sentry/SentryItemType;)Lio/sentry/DataCategory;

    move-result-object p2

    invoke-virtual {p2}, Lio/sentry/DataCategory;->getCategory()Ljava/lang/String;

    move-result-object p2

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 9
    invoke-direct {p0, p1, p2, v1}, Lio/sentry/clientreport/d;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    iget-object p2, p0, Lio/sentry/clientreport/d;->b:Lio/sentry/SentryOptions;

    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object p2

    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Unable to record lost envelope item."

    invoke-interface {p2, v1, p1, v2, v0}, Lio/sentry/o0;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public d(Lio/sentry/l3;)Lio/sentry/l3;
    .locals 6
    .param p1    # Lio/sentry/l3;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/sentry/clientreport/d;->g()Lio/sentry/clientreport/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lio/sentry/clientreport/d;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "Attaching client report to envelope."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4, v5}, Lio/sentry/o0;->c(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p1}, Lio/sentry/l3;->e()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/sentry/f4;

    .line 5
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object v3, p0, Lio/sentry/clientreport/d;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/u0;

    move-result-object v3

    invoke-static {v3, v0}, Lio/sentry/f4;->u(Lio/sentry/u0;Lio/sentry/clientreport/b;)Lio/sentry/f4;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v0, Lio/sentry/l3;

    invoke-virtual {p1}, Lio/sentry/l3;->d()Lio/sentry/m3;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Lio/sentry/l3;-><init>(Lio/sentry/m3;Ljava/lang/Iterable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 8
    iget-object v2, p0, Lio/sentry/clientreport/d;->b:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/o0;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "Unable to attach client report to envelope."

    invoke-interface {v2, v3, v0, v4, v1}, Lio/sentry/o0;->a(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method g()Lio/sentry/clientreport/b;
    .locals 3
    .annotation build Lm8/h;
    .end annotation

    .line 1
    invoke-static {}, Lio/sentry/k;->c()Ljava/util/Date;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lio/sentry/clientreport/d;->a:Lio/sentry/clientreport/g;

    invoke-interface {v1}, Lio/sentry/clientreport/g;->b()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    new-instance v2, Lio/sentry/clientreport/b;

    invoke-direct {v2, v0, v1}, Lio/sentry/clientreport/b;-><init>(Ljava/util/Date;Ljava/util/List;)V

    return-object v2
.end method
