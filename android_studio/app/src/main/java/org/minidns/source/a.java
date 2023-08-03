package org.minidns.source;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.minidns.MiniDnsException;
import org.minidns.dnsmessage.DnsMessage;
import org.minidns.source.DnsDataSource;
import org.minidns.util.MultipleIoException;

/* compiled from: NetworkDataSource.java */
/* loaded from: classes5.dex */
public class a extends DnsDataSource {

    /* renamed from: e  reason: collision with root package name */
    protected static final Logger f93005e = Logger.getLogger(a.class.getName());

    /* renamed from: f  reason: collision with root package name */
    static final /* synthetic */ boolean f93006f = false;

    /* compiled from: NetworkDataSource.java */
    /* renamed from: org.minidns.source.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    static /* synthetic */ class C0830a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f93007a;

        static {
            int[] iArr = new int[DnsDataSource.QueryMode.values().length];
            f93007a = iArr;
            try {
                iArr[DnsDataSource.QueryMode.dontCare.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f93007a[DnsDataSource.QueryMode.udpTcp.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f93007a[DnsDataSource.QueryMode.tcp.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    @Override // org.minidns.source.DnsDataSource
    public DnsMessage e(DnsMessage dnsMessage, InetAddress inetAddress, int i4) throws IOException {
        boolean z9;
        ArrayList arrayList = new ArrayList(2);
        DnsDataSource.QueryMode b10 = b();
        int i10 = C0830a.f93007a[b10.ordinal()];
        if (i10 == 1 || i10 == 2) {
            z9 = true;
        } else if (i10 != 3) {
            throw new IllegalStateException("Unsupported query mode: " + b10);
        } else {
            z9 = false;
        }
        DnsMessage dnsMessage2 = null;
        if (z9) {
            try {
                dnsMessage2 = m(dnsMessage, inetAddress, i4);
            } catch (IOException e4) {
                arrayList.add(e4);
            }
            if (dnsMessage2 != null && !dnsMessage2.f92664f) {
                return dnsMessage2;
            }
            Logger logger = f93005e;
            Level level = Level.FINE;
            Object[] objArr = new Object[1];
            objArr[0] = dnsMessage2 != null ? "response is truncated" : (Serializable) arrayList.get(0);
            logger.log(level, "Fallback to TCP because {0}", objArr);
        }
        try {
            return l(dnsMessage, inetAddress, i4);
        } catch (IOException e10) {
            arrayList.add(e10);
            MultipleIoException.throwIfRequired(arrayList);
            return dnsMessage2;
        }
    }

    protected DatagramSocket j() throws SocketException {
        return new DatagramSocket();
    }

    protected Socket k() {
        return new Socket();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public DnsMessage l(DnsMessage dnsMessage, InetAddress inetAddress, int i4) throws IOException {
        Socket socket;
        try {
            socket = k();
        } catch (Throwable th) {
            th = th;
            socket = null;
        }
        try {
            socket.connect(new InetSocketAddress(inetAddress, i4), this.f93001b);
            socket.setSoTimeout(this.f93001b);
            DataOutputStream dataOutputStream = new DataOutputStream(socket.getOutputStream());
            dnsMessage.s(dataOutputStream);
            dataOutputStream.flush();
            DataInputStream dataInputStream = new DataInputStream(socket.getInputStream());
            int readUnsignedShort = dataInputStream.readUnsignedShort();
            byte[] bArr = new byte[readUnsignedShort];
            for (int i10 = 0; i10 < readUnsignedShort; i10 += dataInputStream.read(bArr, i10, readUnsignedShort - i10)) {
            }
            DnsMessage dnsMessage2 = new DnsMessage(bArr);
            if (dnsMessage2.f92659a == dnsMessage.f92659a) {
                socket.close();
                return dnsMessage2;
            }
            throw new MiniDnsException.IdMismatch(dnsMessage, dnsMessage2);
        } catch (Throwable th2) {
            th = th2;
            if (socket != null) {
                socket.close();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public DnsMessage m(DnsMessage dnsMessage, InetAddress inetAddress, int i4) throws IOException {
        DatagramSocket datagramSocket;
        DatagramPacket b10 = dnsMessage.b(inetAddress, i4);
        int i10 = this.f93000a;
        byte[] bArr = new byte[i10];
        try {
            datagramSocket = j();
        } catch (Throwable th) {
            th = th;
            datagramSocket = null;
        }
        try {
            datagramSocket.setSoTimeout(this.f93001b);
            datagramSocket.send(b10);
            DatagramPacket datagramPacket = new DatagramPacket(bArr, i10);
            datagramSocket.receive(datagramPacket);
            DnsMessage dnsMessage2 = new DnsMessage(datagramPacket.getData());
            if (dnsMessage2.f92659a == dnsMessage.f92659a) {
                datagramSocket.close();
                return dnsMessage2;
            }
            throw new MiniDnsException.IdMismatch(dnsMessage, dnsMessage2);
        } catch (Throwable th2) {
            th = th2;
            if (datagramSocket != null) {
                datagramSocket.close();
            }
            throw th;
        }
    }
}
