package com.clj.fastble.data;

import android.bluetooth.BluetoothDevice;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class BleDevice implements Parcelable {
    public static final Parcelable.Creator<BleDevice> CREATOR = new a();
    private BluetoothDevice mDevice;
    private int mRssi;
    private byte[] mScanRecord;
    private long mTimestampNanos;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<BleDevice> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public BleDevice createFromParcel(Parcel parcel) {
            return new BleDevice(parcel);
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public BleDevice[] newArray(int i4) {
            return new BleDevice[i4];
        }
    }

    public BleDevice(BluetoothDevice bluetoothDevice) {
        this.mDevice = bluetoothDevice;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public BluetoothDevice getDevice() {
        return this.mDevice;
    }

    public String getKey() {
        if (this.mDevice != null) {
            return this.mDevice.getName() + this.mDevice.getAddress();
        }
        return "";
    }

    public String getMac() {
        BluetoothDevice bluetoothDevice = this.mDevice;
        if (bluetoothDevice != null) {
            return bluetoothDevice.getAddress();
        }
        return null;
    }

    public String getName() {
        BluetoothDevice bluetoothDevice = this.mDevice;
        if (bluetoothDevice != null) {
            return bluetoothDevice.getName();
        }
        return null;
    }

    public int getRssi() {
        return this.mRssi;
    }

    public byte[] getScanRecord() {
        return this.mScanRecord;
    }

    public long getTimestampNanos() {
        return this.mTimestampNanos;
    }

    public void setDevice(BluetoothDevice bluetoothDevice) {
        this.mDevice = bluetoothDevice;
    }

    public void setRssi(int i4) {
        this.mRssi = i4;
    }

    public void setScanRecord(byte[] bArr) {
        this.mScanRecord = bArr;
    }

    public void setTimestampNanos(long j4) {
        this.mTimestampNanos = j4;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i4) {
        parcel.writeParcelable(this.mDevice, i4);
        parcel.writeByteArray(this.mScanRecord);
        parcel.writeInt(this.mRssi);
        parcel.writeLong(this.mTimestampNanos);
    }

    public BleDevice(BluetoothDevice bluetoothDevice, int i4, byte[] bArr, long j4) {
        this.mDevice = bluetoothDevice;
        this.mScanRecord = bArr;
        this.mRssi = i4;
        this.mTimestampNanos = j4;
    }

    protected BleDevice(Parcel parcel) {
        this.mDevice = (BluetoothDevice) parcel.readParcelable(BluetoothDevice.class.getClassLoader());
        this.mScanRecord = parcel.createByteArray();
        this.mRssi = parcel.readInt();
        this.mTimestampNanos = parcel.readLong();
    }
}
