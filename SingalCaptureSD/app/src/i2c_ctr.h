#ifndef I2C_CTR_H_
#define I2C_CTR_H_

void OVL_sccb_start(void);
void OVL_sccb_end(void);
void OVL_sccb_sendbyte( unsigned char value );
void OVL_sccb_senddata(unsigned char subaddr1,unsigned char subaddr2,unsigned char value);

void OVR_sccb_start(void);
void OVR_sccb_end(void);
void OVR_sccb_sendbyte( unsigned char value );
void OVR_sccb_senddata(unsigned char subaddr1,unsigned char subaddr2,unsigned char value);

#endif /* I2C_CTR_H_ */
